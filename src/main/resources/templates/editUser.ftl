<#import "parts/common.ftl" as mainTemplate>
<@mainTemplate.page>
    User editor
    <form action="/user" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <input type="text" name="username" value="${user.username}">
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}>${role}
                </label>
            </div>
        </#list>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Добавить</button>
    </form>
</@mainTemplate.page>