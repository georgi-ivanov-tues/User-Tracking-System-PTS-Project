package usertrackingsystem

enum UserStates {
    ACTIVE ('Активен'),
    NOT_ACTIVE ('Неактивен'),
    SICK ('В болничен'),
    ON_LEAVE ('В отпуск')

    UserStates(String value) {
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
