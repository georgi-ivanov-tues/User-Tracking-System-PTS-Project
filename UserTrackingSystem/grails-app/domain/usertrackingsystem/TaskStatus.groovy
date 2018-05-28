package usertrackingsystem

enum TaskStatus {
    NEW ('Нова'),
    ASSIGNED ('Възложена'),
    FINISHED ('Завършена')

    TaskStatus(String value) {
        this.value = value
    }

    private final String value

    String getValue() {
        value
    }

    String toString() {
        return value
    }
}
