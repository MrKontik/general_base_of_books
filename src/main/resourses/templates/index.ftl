<#import "common/page.ftl" as page>
<#import "common/header.ftl" as header>
<#import "common/footer.ftl" as footer>

<@page.page "Books">
    <@header.header "in"/>
<main role="main">

    <div class="jumbotron">
        <h1 class="display-4">Hello, world!</h1>
        <p class="lead">This is a simple project about books library</p>
        <hr class="my-4">
        <p>Tyt budet kakoito text, a mozhet i net, mozhet etoi stranici zavtra ne budet</p>
        <a class="btn btn-primary btn-lg" href="/greeting" role="button">Click here to see a greeting.</a>
    </div>

</main>
    <@footer.footer/>
</@page.page>
