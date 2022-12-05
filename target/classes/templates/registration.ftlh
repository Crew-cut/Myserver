<#import "parts/common.ftlh" as c>
<#import "parts/login.ftl" as l>

<@c.page>
Add new User
${message?ifExists}
<@l.login "/registration" />
</@c.page>