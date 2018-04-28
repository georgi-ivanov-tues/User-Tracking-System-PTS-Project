<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="/layouts/menu"/>

    <a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                <li><g:link class="list" action="index"><g:message code="user.userList" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="user.newUser" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-user" class="content scaffold-show" role="main">
            <h1><g:message code="user.showUser" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="user"
                       order="firstName, secondName, familyName, egn, email, department, position, userType, userState"/>
            %{--<f:display bean="user" property="firstName"/>--}%
            %{--<f:display bean="user" property="secondName"/>--}%
            %{--<f:display bean="user" property="familyName"/>--}%
            %{--<f:display bean="user" property="egn"/>--}%
            %{--<f:display bean="user" property="email"/>--}%
            %{--<f:display bean="user" property="department"/>--}%
            %{--<f:display bean="user" property="position"/>--}%
            %{--<f:display bean="user" property="userType"/>--}%
            %{--<f:display bean="user" property="userState"/>--}%
            <g:form resource="${this.user}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.user}"><g:message code="button.edit" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'button.delete', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
