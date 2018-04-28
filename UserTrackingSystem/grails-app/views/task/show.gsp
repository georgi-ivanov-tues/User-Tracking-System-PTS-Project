<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="/layouts/menu"/>

    <a href="#show-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                <li><g:link class="list" action="index"><g:message code="task.taskList" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="task.newTask" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-task" class="content scaffold-show" role="main">
            <h1><g:message code="task.showTask" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="task"
                       order="name, description, status, priority, userAssigned"/>
            <g:form resource="${this.task}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.task}"><g:message code="button.edit" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'button.delete', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
