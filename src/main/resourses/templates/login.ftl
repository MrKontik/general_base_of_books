<#import "common/page.ftl" as page>
<#import "common/header.ftl" as header>
<#import "common/footer.ftl" as footer>
<#import "common/loginform.ftl" as login>

<@page.page "Login">
<@header.header "in"/>
<#if RequestParameters.error??>
<div>
    Invalid username and password.
</div>
    </#if>
    <#if RequestParameters.logout??>
        <div>
            You have been logged out.
        </div>
    </#if>
<@login.login "/login"/>
<@footer.footer/>
</@page.page>
