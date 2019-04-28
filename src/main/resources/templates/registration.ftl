<#import "parts/common.ftl" as mainTemplates>
<#import "parts/login.ftl" as l>
<@mainTemplates.page>
    Новый пользователь
    ${message}
    <@l.login "/registration"/>
</@mainTemplates.page>