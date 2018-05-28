<%@ page import="usertrackingsystem.UserTypes" %>
<content tag="nav">
    <li class="dropdown">
        <a href="${createLink(uri: '/index')}" role="button" >Начало</a>
    </li>
    <li class="dropdown">
        <a href="${createLink(uri: '/task/index')}" role="button">Задачи</a>
    </li>
    <li class="dropdown">
        <a href="${createLink(uri: '/user/userProfile')}" role="button">Личен профил</a>
    </li>
    <li class="dropdown">
        <a href="${createLink(uri: '/report/createDailyReport')}" role="button">Дневен отчет</a>
    </li>
    <g:if test="${usertrackingsystem.Application.loggedUser.getUserType().equals(usertrackingsystem.UserTypes.ADMIN)}">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Админски панел<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Дневни отчети</a></li>
                <li><a href="${createLink(uri: '/user/index')}">Потребители</a></li>
            </ul>
        </li>
    </g:if>
    <li>
        <a href="${createLink(uri: '/user/logoutUser')}" role="button">Изход</a>
    </li>

</content>
