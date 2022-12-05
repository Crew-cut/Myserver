<#import "parts/common.ftl" as c>

<@c.page>
<div>Список сообщений</div>
<form method="post" action="filter">
    <input type="text" name="filter">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit">Поиск</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
    <#else>
    No messages
</#list>
<form>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button><a href="/main">Назад</a></button>
</form>
</@c.page>