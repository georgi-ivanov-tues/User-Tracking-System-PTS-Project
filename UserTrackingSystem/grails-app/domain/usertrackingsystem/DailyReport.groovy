package usertrackingsystem

import java.time.DayOfWeek
import java.time.LocalTime

class DailyReport extends Report{

    private DayOfWeek dayOfWeek
    private LocalTime arriveTime
    private LocalTime leaveTime

    DailyReport(Long id, User user, ArrayList<Task> completedTask, DayOfWeek dayOfWeek, LocalTime arriveTime, LocalTime leaveTime) {
        super(id, user, completedTask)
        this.dayOfWeek = dayOfWeek
        this.arriveTime = arriveTime
        this.leaveTime = leaveTime
    }

    DayOfWeek getDayOfWeek() {
        return dayOfWeek
    }

    void setDayOfWeek(DayOfWeek dayOfWeek) {
        this.dayOfWeek = dayOfWeek
    }

    LocalTime getArriveTime() {
        return arriveTime
    }

    void setArriveTime(LocalTime arriveTime) {
        this.arriveTime = arriveTime
    }

    LocalTime getLeaveTime() {
        return leaveTime
    }

    void setLeaveTime(LocalTime leaveTime) {
        this.leaveTime = leaveTime
    }

    @Override
    void getReport() {
        println "Getting Daily Report..."
    }
}
