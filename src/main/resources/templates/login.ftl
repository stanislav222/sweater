<#import "parts/common.ftl" as mainTemplates>
<#import "parts/login.ftl" as login>
<@mainTemplates.page>
    Login form
    <@login.login "/login"/><
    <a href="/registration">Регистрицаия нового пользователя</a>
</@mainTemplates.page>