<#import "common/page.ftl" as page>
<#import "common/header.ftl" as header>
<#import "common/footer.ftl" as footer>
<#import "common/loginform.ftl" as login>

<@page.page "Login">
<@header.header "in"/>
<main role="main" class="flex-shrink-0">
    <div class="container">
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
</div>
</main>
<@footer.footer/>
</@page.page>
