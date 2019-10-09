

<#import "common/page.ftl" as page>
<#import "common/header.ftl" as header>
<#import "common/footer.ftl" as footer>
<#import "common/loginform.ftl" as login>

<@page.page "Register">
    <@header.header "in"/>
    New User
    <@login.login "/registration"/>
    <#if message??>
        <div>
            ${message}
        </div>
    </#if>
    <@footer.footer/>
</@page.page>