<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'report.label', default: 'DailyReport')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="/layouts/menu"/>

    <a href="#create-dailyReport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="create-dailyReport" class="content scaffold-create" role="main">
            <h1><g:message code="report.create.title"/></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.dailyReport}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.dailyReport}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.report}" action="saveDailyReport">
                <fieldset class="form">
                    %{--<f:all bean="dailyReport"/>--}%
                    <f:field bean="dailyReport" property="arriveTime" label="Начало на работен ден"/>
                    <f:field bean="dailyReport" property="leaveTime" label="Край на работен ден"/>
                    <f:field bean="dailyReport" property="completedTask" label="Завършени задачи"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'button.save', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
