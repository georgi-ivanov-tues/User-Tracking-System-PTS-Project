package usertrackingsystem

enum TaskPriorities {
    LOW ('Нисък'),
    MID ('Среден'),
    HIGH ('Висок'),
    CRITICAL ('Критичен')

    TaskPriorities(String value) {
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
