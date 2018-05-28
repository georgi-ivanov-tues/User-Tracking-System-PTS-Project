package usertrackingsystem

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TaskController {

    static TaskService taskService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        println "logged user = " + Application.loggedUser
        taskService.save(Application.defaultTasks.get(0))
        taskService.save(Application.defaultTasks.get(1))
        taskService.save(Application.defaultTasks.get(2))

        params.max = Math.min(max ?: 10, 100)
        respond taskService.list(params), model:[taskCount: taskService.count()]
    }

    def show(Long id) {
        respond taskService.get(id)
    }

    def create() {
        respond new Task(params)
    }

    def save(Task task) {
        if (task == null) {
            notFound()
            return
        }

        try {
            taskService.save(task)
        } catch (ValidationException e) {
            respond task.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'task.created.message')
                redirect task
            }
            '*' { respond task, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond taskService.get(id)
    }

    def update(Task task) {
        if (task == null) {
            notFound()
            return
        }

        try {
            taskService.save(task)
        } catch (ValidationException e) {
            respond task.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'task.updated.message')
                redirect task
            }
            '*'{ respond task, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        taskService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'task.deleted.message')
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'task.not.found.message')
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    static ArrayList<Task> getTasksByUser(User user){
        ArrayList<Task> tasks = new ArrayList<>()
        for(Task task : taskService.list()){
            if(task.getUserAssigned().getId() == user.getId())
                tasks.add(task)
        }
        return tasks
    }
}
