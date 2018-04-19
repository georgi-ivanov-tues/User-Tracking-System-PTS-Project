package usertrackingsystem

abstract class Report {

    private Long id
    private User user
    private ArrayList<Task> completedTask

    Report(Long id, User user, ArrayList<Task> completedTask) {
        this.id = id
        this.user = user
        this.completedTask = completedTask
    }

    Long getId() {
        return id
    }

    void setId(Long id) {
        this.id = id
    }

    User getUser() {
        return user
    }

    void setUser(User user) {
        this.user = user
    }

    ArrayList<Task> getCompletedTask() {
        return completedTask
    }

    void setCompletedTask(ArrayList<Task> completedTask) {
        this.completedTask = completedTask
    }

    abstract void getReport();
}
