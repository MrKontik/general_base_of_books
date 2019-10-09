<#import "loginform.ftl" as login>
<#macro header inout>
    <header>
        <h1>Books</h1>
        <nav>
            <ul>
                <li><a href="/index">Books</a>
                <#if inout == "in">
                <li><a href="/login">Sign In</a>
                <li><a href="/registration">Sign Up</a>
                    <#else>
                <@login.logout/>
                </#if>
            </ul>
        </nav>
    </header>
</#macro>