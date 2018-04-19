package usertrackingsystem

import java.time.LocalDateTime

class WeeklyReport extends Report{

    private byte weekNumber
    private LocalDateTime hoursWorked

    WeeklyReport(Long  id, User user, ArrayList<Task> completedTask, byte weekNumber, LocalDateTime hoursWorked) {
        super(id, user, completedTask)
        this.weekNumber = weekNumber
        this.hoursWorked = hoursWorked
    }

    byte getWeekNumber() {
        return weekNumber
    }

    void setWeekNumber(byte weekNumber) {
        this.weekNumber = weekNumber
    }

    LocalDateTime getHoursWorked() {
        return hoursWorked
    }

    void setHoursWorked(LocalDateTime hoursWorked) {
        this.hoursWorked = hoursWorked
    }

    @Override
    void getReport() {

    }
}
