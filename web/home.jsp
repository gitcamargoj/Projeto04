<%-- 
    Document   : home
    Created on : 17/04/2018, 16:20:22
    Author     : junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Supply</title>
        <%@include file="WEB-INF/jspf/bootstrap_meta_and_fonts.jspf"%>
    </head>
    <body class="bodycolor">
        <%@include file="WEB-INF/jspf/navbar.jspf"%>

        <%-- Image caps Bootstrap --%>
        <div class="card mb-3">
            <img class="card-img-top bannerbody" src="img/banner/banner_map.png" alt="notas de dólar americano enroladas">
            <div class="card-body">
                <h5 class="card-title h5body">Supply</h5>
                <p class="card-text pdes">O Supply é um site feito em Java EE e orientado a objetos com o objetivo de realizar um cadastro (inserir, alterar e apagar) de clientes e fornecedores. E apesar de parecer e me comportar como uma página estatica (HTML), na verdade sou um JSP! Quer saber mais sobre JSP? Então <a target="_blank" href='https://pt.wikipedia.org/wiki/JavaServer_Pages'>clica aqui</a>.</p>
            </div>
        </div>

        <hr><br><center><h4 class="h4body">O Supply foi desenvolvido por:</h4></center><br><hr>

        <%-- Card groups Bootstrap --%>
        <div class="card-group">
            <div class="card">
                <center><img class="rounded-circle imgdev" src="img/devs/junior.png" alt="foto do desenvolvedor Junior, foto em preto e branco"></center>
                <div class="card-body">
                    <h5 class="card-title h5body">Junior</h5>
                    <p class="card-text pbody">Aficionado por novas tecnologias, não perde nenhuma WWDC, Google I/O e Build. Curte cerveja e ficção científica.</p>
                    <p class="card-text"><small class="text-muted"><a href="https://github.com/junioracamargo" target="_blank">GitHub</a></small></p>
                    <p class="card-text"><small class="text-muted"><a href="https://linkedin.com/in/junioracamargo" target="_blank">LinkedIn</a></small></p>        
                </div>
            </div>
            <div class="card">
                <center><img class="rounded-circle imgdev" src="img/devs/no_img.png" alt="foto do desenvolvedor Willians"></center>
                <div class="card-body">
                    <h5 class="card-title h5body">Fabricio</h5>
                    <p class="card-text pbody">Lorem ipsum dolor sit amet consectetur adipiscing elit sodales, vulputate inceptos massa nisl cum tempor sed lacus, praesent aliquet litora habitasse per etiam quam.</p>
                    <p class="card-text"><small class="text-muted"><a href="https://github.com/FabricioCaldas" target="_blank">GitHub</a></small></p>
                    <p class="card-text"><small class="text-muted"><a href="https://www.linkedin.com/in/" target="_blank">LinkedIn</a></small></p>
                </div>
            </div>
            <div class="card">
                <center><img class="rounded-circle imgdev" src="img/devs/no_img.png" alt="foto do desenvolvedor Igor"></center>
                <div class="card-body">
                    <h5 class="card-title h5body">Victor</h5>
                    <p class="card-text pbody">Lorem ipsum dolor sit amet consectetur adipiscing elit sodales, vulputate inceptos massa nisl cum tempor sed lacus, praesent aliquet litora habitasse per etiam quam.</p>
                    <p class="card-text"><small class="text-muted"><a href="https://github.com/victorwander" target="_blank">GitHub</a></small></p>
                    <p class="card-text"><small class="text-muted"><a href="https://linkedin.com/in/" target="_blank">LinkedIn</a></small></p>
                </div>
            </div>
        </div>

    <%@include file="WEB-INF/jspf/footer.jspf"%>

    <%@include file="WEB-INF/jspf/bootstrap_body_end.jspf"%>
    </body>
</html>