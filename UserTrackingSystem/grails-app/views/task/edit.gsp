<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="/layouts/menu"/>

    <a href="#edit-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                <li><g:link class="list" action="index"><g:message code="task.taskList" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="task.newTask" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-task" class="content scaffold-edit" role="main">
            <h1><g:message code="button.edit" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.task}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.task}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.task}" method="PUT">
                <g:hiddenField name="version" value="${this.task?.version}" />
                <fieldset class="form">
                    %{--<f:all bean="task"--}%
                           %{--order="name, description, status, priority, userAssigned"/>--}%

                    <f:field bean="task" property="name" label="Заглавие"/>
                    <f:field bean="task" property="description" label="Описание"/>
                    <f:field bean="task" property="status" label="Статус"/>
                    <f:field bean="task" property="priority" label="Приоритет"/>
                    <f:field bean="task" property="userAssigned" label="Възложена на"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'button.save', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
