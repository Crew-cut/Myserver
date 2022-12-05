<#import "parts/common.ftlh" as c>
<#import "parts/login.ftl" as l>

<@c.page>
Login page
<@l.login "/login" />
<a href="/registration">Регистрация</a>
</@c.page>