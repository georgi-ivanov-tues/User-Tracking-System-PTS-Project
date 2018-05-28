<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:render template="/layouts/menu"/>

    <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                <li><g:link class="list" action="index"><g:message code="user.userList" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="user.createNewUser" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.user}" method="POST">
                <fieldset class="form">
                    <f:field bean="user" property="username" label="Потребителско име"/>
                    <f:field bean="user" property="password" label="Парола"/>
                    <f:field bean="user" property="firstName" label="Име"/>
                    <f:field bean="user" property="secondName" label="Презиме"/>
                    <f:field bean="user" property="familyName" label="Фамилия"/>
                    <f:field bean="user" property="egn" label="ЕГН"/>
                    <f:field bean="user" property="email" label="Email"/>
                    <f:field bean="user" property="department" label="Отдел"/>
                    <f:field bean="user" property="position" label="Позиция"/>
                    <f:field bean="user" property="userType" label="Тип потребител"/>
                    <f:field bean="user" property="userState" label="Състояние"/>
                    %{--<f:all bean="user"--}%
                           %{--order="firstName, secondName, familyName, egn, email, department, position, userType, userState"/>--}%
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'button.save', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
