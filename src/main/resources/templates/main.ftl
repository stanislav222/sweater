<#import "parts/common.ftl" as mainTemplates>
<#import "parts/login.ftl" as l>

<@mainTemplates.page>
    <@l.logout/>
    <div>
        <form method="post" action="/main">
            <input type="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" name="tag" placeholder="Введите таг"/>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Отправить</button>
        </form>
    </div> <br/>
    <div>Список сообщений</div>
    <div>
        <form action="/main" method="get">
            <input type="text" name="sort" placeholder="Введите тэг" value="${sort!}"><!-- звлупа не понятная-->
            <button type="submit">Сортировать</button>
        </form>
    </div>
    <#list messages as message >
        <div>
        <b>${message.id}</b>
        <b>${message.text}</b>
        <b>${message.tag}</b>
        <b>${message.authorName}</b>
    </#list>
    </div>
</@mainTemplates.page>