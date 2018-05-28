package usertrackingsystem

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class UserController {

    static UserService userService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def login(){
        render view: 'login'
    }

    def loginUser(){
        boolean isUserFound = false
        for(User usr : Application.users){
            if(usr.getUsername().equals(params.username)){
                if(usr.getPassword().equals(params.password)){
                    Application.loggedUser = usr
                    for(User users : Application.users)
                        UserController.userService.save(users)
                    render view: '../index'

//                    redirect action: 'home'
                    isUserFound = true

                }else{
                    isUserFound = true
                    flash.message = "Грешна парола..."
                    render view: 'login'
                }
            }
        }
        if(!isUserFound){
            flash.message = "Няма такъв потребител..."
            render view: 'login'
        }

    }

    def logoutUser(){
        println "Logout User..."

        flash.message = "Излязохте от системата..."
        render view: 'login'


    }

    def home(){
        for(User usr : Application.users)
            UserController.userService.save(usr)

        render view: '../index'
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }

    def show(Long id) {
        respond userService.get(id)
    }

    def userProfile(){
        respond Application.loggedUser
    }

    def create() {
        respond new User(params)
    }

    def save(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'user.created.message')
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond userService.get(id)
    }

    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'user.updated.message')
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'user.deleted.message')
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'user.not.found.message')
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
