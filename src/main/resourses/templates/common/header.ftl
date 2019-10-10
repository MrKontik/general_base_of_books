<#import "loginform.ftl" as login>
<#macro header inout>

    <header >
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/">Books</a>


                <#if inout == "in">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#buttons" aria-controls="buttons" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="buttons">
                <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="/login">Sign In</a>
                <li class="nav-item"><a class="nav-link" href="/registration">Sign Up</a>
                </ul>
            </div>
                    <#else>
            <ul class="navbar-nav ml-auto">
                <@login.logout/>
            </ul>
                </#if>

        </nav>
    </header>
</#macro>