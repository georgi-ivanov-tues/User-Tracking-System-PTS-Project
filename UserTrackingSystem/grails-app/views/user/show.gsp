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
                       order="firstName, secondName, familyName, username, egn, email, department, position, userType, userState"/>


            %{--<f:display bean="user" property="firstName" label="Име"/>--}%
            %{--<f:display bean="user" property="secondName" label="Презиме"/>--}%
            %{--<f:display bean="user" property="familyName" label="Фамилия"/>--}%
            %{--<f:display bean="user" property="egn" label="ЕГН"/>--}%
            %{--<f:display bean="user" property="email" label="Email"/>--}%
            %{--<f:display bean="user" property="department" label="Отдел"/>--}%
            %{--<f:display bean="user" property="position" label="Позиция"/>--}%
            %{--<f:display bean="user" property="userType" label="Тип потребител"/>--}%
            %{--<f:display bean="user" property="userState" label="Състояние"/>--}%
            <g:form resource="${this.user}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.user}"><g:message code="button.edit" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'button.delete', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
