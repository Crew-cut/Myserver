<#import "parts/common.ftlh" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout />
    <button type="submit"><a href="/user">User list</a></button>
</div>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="text" name="text" placeholder="Введите ссобщение"/>
        <input type="text" name="tag" placeholder="Тэг"/>
        <input type="file" name="file" />
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список сообщений</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Поиск</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.filename>
                <img src="/img/${message.filename}">
            </#if>
        </div>
    </div>
    <#else>
    No messages
</#list>

<!--<div>
    <form>
        <button type="button">
            <a href="/filter">Поиск</a>
        </button>
    </form>
</div>-->
</@c.page>