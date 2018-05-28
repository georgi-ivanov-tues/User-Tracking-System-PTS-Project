package usertrackingsystem

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ReportController {

    DailyReportService dailyReportService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond dailyReportService.list(params), model:[dailyReportCount: dailyReportService.count()]
    }

    def showDailyReport(Long id) {
        respond dailyReportService.get(id)
    }

    def createDailyReport() {

        respond new DailyReport(params)
    }

    def saveDailyReport(DailyReport dailyReport) {
        if (dailyReport == null) {
            notFound()
            return
        }

        try {
            dailyReportService.save(dailyReport)
        } catch (ValidationException e) {
            respond dailyReport.errors, view:'createDailyReport'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'report.label', default: 'DailyReport'), dailyReport.id])
                redirect dailyReport
            }
            '*' { respond dailyReport, [status: CREATED] }
        }
    }

    def editDailyReport(Long id) {
        respond dailyReportService.get(id)
    }

    def update(DailyReport dailyReport) {
        if (dailyReport == null) {
            notFound()
            return
        }

        try {
            dailyReportService.save(dailyReport)
        } catch (ValidationException e) {
            respond dailyReport.errors, view:'editDailyReport'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'report.label', default: 'DailyReport'), dailyReport.id])
                redirect dailyReport
            }
            '*'{ respond dailyReport, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        dailyReportService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'report.label', default: 'DailyReport'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'report.label', default: 'DailyReport'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
