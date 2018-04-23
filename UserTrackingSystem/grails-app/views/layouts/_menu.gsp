<content tag="nav">
    <li class="dropdown">
        <a href="${createLink(uri: '/')}" role="button" >Начало</a>
    </li>
    <li class="dropdown">
        <a href="${createLink(uri: '/task/index')}" role="button">Задачи</a>
    </li>
    <li class="dropdown">
        <a href="${createLink(uri: '/user/index')}" role="button">Потребители</a>
    </li>
    <li class="dropdown">
        <a href="${createLink(uri: '/report/index')}" role="button">Дневен отчет</a>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Админски панел<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">Седмичен репорт</a></li>
            <li><a href="#">Потребители</a></li>
        </ul>
    </li>
</content>
