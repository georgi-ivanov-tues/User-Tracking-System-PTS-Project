package usertrackingsystem

class Task {
    private Long id
    private String name
    private String description
    private TaskStatus status
    private TaskPriorities priority
    private User userAssigned

    Task(Long id, String name, String description, TaskStatus status, TaskPriorities priority, User userAssigned) {
        this.id = id
        this.name = name
        this.description = description
        this.status = status
        this.priority = priority
        this.userAssigned = userAssigned
    }

    Long getId() {
        return id
    }

    void setId(Long id) {
        this.id = id
    }

    String getName() {
        return name
    }

    void setName(String name) {
        this.name = name
    }

    String getDescription() {
        return description
    }

    void setDescription(String description) {
        this.description = description
    }

    TaskStatus getStatus() {
        return status
    }

    void setStatus(TaskStatus status) {
        this.status = status
    }

    TaskPriorities getPriority() {
        return priority
    }

    void setPriority(TaskPriorities priority) {
        this.priority = priority
    }

    User getUserAssigned() {
        return userAssigned
    }

    void setUserAssigned(User userAssigned) {
        this.userAssigned = userAssigned
    }
}
