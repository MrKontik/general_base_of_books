<#macro login path>
    <form action="${path}" method="post">
        <div class="form-group">
            <input type="text" class="form-control" id="inputName" name="username" placeholder="Username" required autofocus/>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password"/>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if path == "/login">
            <div><input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign In"/></div>
        <#else>
            <div><input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign Up"/></div>
        </#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <div class="form-group">
        <input  type="hidden" name="_csrf" value="${_csrf.token}" />
        </div>
        <div >
        <input class="btn btn-sm btn btn-outline-dark" type="submit" value="Sign Out"/>
        </div>
    </form>
</#macro>