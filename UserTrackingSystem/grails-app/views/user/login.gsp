<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User Tracking System</title>
</head>
<body>
<g:form controller="user" method="POST">

%{--<g:render template="/layouts/menu"/>--}%

    %{--<div class="svg" role="presentation">--}%
        %{--<div class="grails-logo-container">--}%
            %{--<asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>--}%
        %{--</div>--}%
    %{--</div>--}%

    <div id="show-user" class="content scaffold-show" role="main">
        <h1><g:message code="user.login"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        Потребител <g:field type="text" name="username"/><br>

        Парола <g:field type="password" name="password"/><br>


        <g:actionSubmit value="Вход" action="loginUser"/>
        <script>
            function checkUser() {
                var users = ${usertrackingsystem.Application.users};
                var i;
                for(i = 0; i < users.size(); i++){


                }

            }
        </script>

        %{--<f:display bean="user"--}%
                   %{--order="firstName, secondName, familyName, egn, email, department, position, userType, userState"/>--}%
    </div>
</g:form>
</body>
</html>
