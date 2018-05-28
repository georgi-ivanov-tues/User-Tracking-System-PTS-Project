package usertrackingsystem

class User {
    private String username
    private String password
    private Long id
    private String firstName
    private String secondName
    private String familyName
    private String egn
    private String email
    private String department
    private String position
    private UserStates userState
    private UserTypes userType

    User(String username, String password, Long id, String firstName, String secondName, String familyName, String egn, String email, String department, String position, UserStates state, UserTypes userType) {
        this.username = username
        this.password = password
        this.id = id
        this.firstName = firstName
        this.secondName = secondName
        this.familyName = familyName
        this.egn = egn
        this.email = email
        this.department = department
        this.position = position
        this.userState = state
        this.userType = userType
    }

    String getUsername() {
        return username
    }

    void setUsername(String username) {
        this.username = username
    }

    String getPassword() {
        return password
    }

    void setPassword(String password) {
        this.password = password
    }

    Long getId() {
        return id
    }

    String toString() {
        return firstName + " " + secondName + " " + familyName
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

    UserStates getUserState() {
        return userState
    }

    void setUserState(UserStates userState) {
        this.userState = userState
    }

    UserTypes getUserType() {
        return userType
    }

    void setUserType(UserTypes userType) {
        this.userType = userType
    }
}
