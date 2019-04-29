<#macro login path>
    <form action="${path}" method="post">
        <div><label for="">Введите логин<input type="text" name="username" placeholder="Логин"></label></div>
        <div><label for="">Введите пароль<input type="password" name="password" placeholder="Пароль"></label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Вход</button>
    </form>
</#macro>

<#macro logout>
<div>
    <form action="/logout" method="post">
        <input type="submit" value="Выйти"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/> <!-- токен нужен только для пост запросов ????-->
    </form>
</div>
</#macro>