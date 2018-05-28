package usertrackingsystem

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration

class Application extends GrailsAutoConfiguration {

    static User loggedUser = null

    static ArrayList<User> users = new ArrayList<>()
    static ArrayList<Task> defaultTasks = new ArrayList<>()

    static void main(String[] args) {
        users.add(new User("giivanov", "admin", 1, "Georgi", "Ivanov", "Ivanov",
                "egn", "email", "java", "admin", UserStates.ACTIVE, UserTypes.ADMIN))

        users.add(new User("ippetrov", "123456",2, "Ivan", "Petrov", "Petrov",
                "egn", "email", "java", "emp", UserStates.ACTIVE, UserTypes.EMPLOYEE))

        defaultTasks.add(new Task(1, "User Interface", "Fix user interface on daily report pages",
                TaskStatus.ASSIGNED, TaskPriorities.MID, users.get(0)))

        defaultTasks.add(new Task(2, "Bug #2345", "Null Pointer Exception in ...",
                TaskStatus.ASSIGNED, TaskPriorities.LOW, users.get(0)))

        defaultTasks.add(new Task(3, "Add Weekly Report", "Add weekly report option",
                TaskStatus.ASSIGNED, TaskPriorities.MID, users.get(1)))

        GrailsApp.run(Application, args)
    }
}