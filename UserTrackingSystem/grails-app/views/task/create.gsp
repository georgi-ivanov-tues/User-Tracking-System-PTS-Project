<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="/layouts/menu"/>

    <a href="#create-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                <li><g:link class="list" action="index"><g:message code="task.taskList" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-task" class="content scaffold-create" role="main">
            <h1><g:message code="task.newTask" /></h1>
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
            <g:form resource="${this.task}" method="POST">
                <fieldset class="form">
                    <f:field bean="task" property="name" label="Заглавие"/>
                    <f:field bean="task" property="description" label="Описание"/>
                    <f:field bean="task" property="status" label="Статус"/>
                    <f:field bean="task" property="priority" label="Приоритет"/>
                    <f:field bean="task" property="userAssigned" label="Възложена на"/>

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'button.save', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
