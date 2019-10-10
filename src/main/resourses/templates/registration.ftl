

<#import "common/page.ftl" as page>
<#import "common/header.ftl" as header>
<#import "common/footer.ftl" as footer>
<#import "common/loginform.ftl" as login>

<@page.page "Register">
    <@header.header "in"/>
    <main role="main" class="flex-shrink-0">
    <div class="container">
    New User
    <@login.login "/registration"/>
    <#if message??>
        <div>
            ${message}
        </div>
    </#if>
    </div>
    </main>
    <@footer.footer/>
</@page.page>