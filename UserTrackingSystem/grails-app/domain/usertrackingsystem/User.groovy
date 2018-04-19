package usertrackingsystem

class User {
    private Long id
    private String firstName
    private String secondName
    private String familyName
    private String egn
    private String email
    private String department
    private String position
    private UserStates state

    User(Long id, String firstName, String secondName, String familyName, String egn, String email, String department, String position, UserStates state) {
        this.id = id
        this.firstName = firstName
        this.secondName = secondName
        this.familyName = familyName
        this.egn = egn
        this.email = email
        this.department = department
        this.position = position
        this.state = state
    }

    Long getId() {
        return id
    }

    void setId(Long id) {
        this.id = id
    }

    String getFirstName() {
        return firstName
    }

    void setFirstName(String firstName) {
        this.firstName = firstName
    }

    String getSecondName() {
        return secondName
    }

    void setSecondName(String secondName) {
        this.secondName = secondName
    }

    String getFamilyName() {
        return familyName
    }

    void setFamilyName(String familyName) {
        this.familyName = familyName
    }

    String getEgn() {
        return egn
    }

    void setEgn(String egn) {
        this.egn = egn
    }

    String getEmail() {
        return email
    }

    void setEmail(String email) {
        this.email = email
    }

    String getDepartment() {
        return department
    }

    void setDepartment(String department) {
        this.department = department
    }

    String getPosition() {
        return position
    }

    void setPosition(String position) {
        this.position = position
    }

    UserStates getState() {
        return state
    }

    void setState(UserStates state) {
        this.state = state
    }
}
