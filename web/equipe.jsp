<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar_deslogado.jspf"%>
        
        <section class="content equipe">
    <div class="container-fluid" id="equipe">
        <h2 id="equipe-logo">EQUIPE DESENVOLVEDORA</h2>

        <div class="row">
            <div class="col-md-3 col-sm-6" id="primeiro-membro" class="membro">
                <div id="foto">
                    <img class="rounded-circle" src="res/img/vinicius.png" width="225" height="225">
                </div>
                <div id="descricao">
                    <h4 style="font-size: 30px;"><b>Vinícius Lima</b></h4>
                    <h4><i>Desenvolvedor Front-end</i></h4>
                    <div class="social">
                        <a class="fa fa-facebook " href="https://www.facebook.com/vinicius.lima.1671" target="_blank" href="#"></a>
                        <a class="fa fa-linkedin" href="https://www.linkedin.com/in/vin%C3%ADcius-lima-5b5b9a138/" target="_blank" href="#"></a>
                        <a class="fa fa-github" href="https://github.com/ViniciusLima5" target="_blank" href="#"></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6" id="segundo-membro" class="membro">
                <div id="foto">
                    <img class="rounded-circle" src="res/img/rodrigoc.jpg" width="225" height="225">
                </div>
                <div id="descricao">
                    <h4 style="font-size: 30px;"><b>Rodrigo Corneta</b></h4>
                    <h4><i>Desenvolvedor Back-end</i></h4>
                    <div class="social">
                        <a class="fa fa-facebook " href="https://www.facebook.com/rodrigo.corneta.7" target="_blank" href="#"></a>
                        <a class="fa fa-linkedin" href="#" target="_blank" href="#"></a>
                        <a class="fa fa-github" href="https://github.com/raukomor" target="_blank" href="#"></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6" id="terceiro-membro" class="membro">
                <div id="foto">
                    <img class="rounded-circle" src="res/img/rodrigof.jpg" width="225" height="225">
                </div>
                <div id="descricao">
                    <h4 style="font-size: 30px;"><b>Rodrigo Figueiredo</b></h4>
                    <h4><i>Desenvolvedor Back-end</i></h4>
                        
                    <div class="social">
                        <a class="fa fa-facebook " href="https://www.facebook.com/rolfigueiredo" target="_blank" href="#"></a>
                        <a class="fa fa-linkedin" href="#"  target="_blank" href="#"></a>
                        <a class="fa fa-github" href="https://github.com/rolfigueiredo" target="_blank" href="#"></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6" id="quarto-membro" class="membro">
                <div id="foto">
                    <img class="rounded-circle" src="res/img/diogo.jpg" width="225" height="225">
                </div>
                <div id="descricao">
                    <h4 style="font-size: 30px;"><b>Diogo Pacheco</b></h4>
                    <h4><i>Desenvolvedor Back-end</i></h4>
                    <div class="social">
                        <a class="fa fa-facebook " href="https://www.facebook.com/diogo.pacheco.184" target="_blank" href="#"></a>
                        <a class="fa fa-linkedin" href="#" target="_blank" href="#"></a>
                        <a class="fa fa-github" href="https://github.com/diogopachecopereira" target="_blank" href="#"></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
    
    
        
        <%@include file="WEB-INF/jspf/modal_login.jspf"%>
        <%@include file="WEB-INF/jspf/modal_recuperar_senha.jspf"%>
        <%@include file="WEB-INF/jspf/modal_contato.jspf"%>
        <%@include file="WEB-INF/jspf/footer_azul.jspf"%>
    </body>
</html>
