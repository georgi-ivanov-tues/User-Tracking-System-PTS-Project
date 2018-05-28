package usertrackingsystem

enum UserTypes {
    EMPLOYEE ("Служител"),
    ADMIN ("Админ")

    UserTypes(String value) {
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
