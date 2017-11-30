<%-- 
    Document   : home
    Created on : 29/11/2017, 22:00:11
    Author     : Paula e Marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar_deslogado.jspf"%>
        
        <section class="wave">
		<div class="container-fluid" id="intro">
			<div class="row">
				<div class="col-sm-12 centered-col">
					<span id="titulo">BUSCADOR SOLARI</span>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 centered-col">
					<h2 id="subtitulo">A sua luz para encontrar empresas no litoral paulista ;)</h2>
				</div>
			</div>
		</div>
	</section>
	
	<section class="content beneficios">
            <div class="container">
		<div class="row">
			<div class="col-sm-12 col-xs-12 centered-col">
				<h1 id="titulo-beneficios" class="hidden">O QUE VAMOS ENCONTRAR HOJE?</h1>
			</div>
                </div>
                <form>
                    <div class="filtros row">
                        <div class="col-sm-3 md-form">
                            <i class="fa fa-building prefix"></i>
                            <label for="filtroNomeEmpresa"><b>Nome da empresa:</b></label>
                            <input type="text" class=" form-control" id="filtroNome">
                          
                        </div>
                        <div class="drop col-sm-3 md-form">
                            <label id="img_category_label"class="field"for="img_category"data-value="">
                                <span>Categoria</span>
                                <div id="img_category"class="psuedo_select"name="img_category">
                                        <span class="selected"></span>
                                        <ul id="img_category_options"class="options">
                                                <li class="option"data-value="commercial">Commercial</li>
                                                <li class="option"data-value="residential">Residential</li>
                                        </ul>
                                </div>
                            </label>
  
                            <script src="js/index.js"></script>               
                        </div>
                        <div class="col-sm-3 md-form">
                            <i class="fa fa-map-marker prefix"></i>
                            <label for="filtroCidadeEmpresa"><b>Cidade:</b></label>
                            <input type="text" class="form-control" id="filtroCiadeEmpresa">
                        </div>
                        <div class="col-sm-3 md-form">
                            <i class="fa fa-location-arrow prefix"></i>
                            <label for="filtroBairroEmpresa"><b>Bairro:</b></label>
                            <input type="text" class="form-control" id="filtroBairroEmpresa">
                        </div>
                    </div>
                </form>
                    
            </div>	
	</section>

	<section class="contato">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 centered-col">
					<h2 id="txt-capa"><span style="color: #FFD460;">00</span> grandes empresas já usam o nosso serviço!</h2>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="img-capa col-sm-3 centered-col"><img style="opacity: 0.8;" width="150" heigth="150" src="res/img/praiamar-logo.png"></div>
				<div class="img-capa col-sm-3 centered-col"><img style="opacity: 0.8;" width="150" heigth="150" src="res/img/outback-logo.png"></div>
				<div class="img-capa col-sm-3 centered-col"><img style="opacity: 0.8;" width="150" heigth="150" src="res/img/bomprato-logo.png"></div>
				<div class="img-capa col-sm-3 centered-col"><img style="opacity: 0.8;" width="150" heigth="150" src="res/img/mcdonalds-logo.png"></div>
			</div>
			<br><br><br>

			<div class="row">
                <div class="col-md-12">
				<a href="cadastro_empresa.html"><button type="button"  class="btn btn-deep-orange waves-effect col-sm-12 centered-col animated pulse infinite" style="font-size: 125%">Gostou? Que tal começar agora? <i style = "bottom: 2px;" class="fa fa-arrow-right" aria-hidden="true"></i></button></a>
			</div>
        </div>
			<br><br><br>
		</div>
	</section>
        
        <%@include file="WEB-INF/jspf/modal_login.jspf"%>
        <%@include file="WEB-INF/jspf/modal_recuperar_senha.jspf"%>
        <%@include file="WEB-INF/jspf/modal_contato.jspf"%>
        <%@include file="WEB-INF/jspf/footer_azul.jspf"%>
    </body>
</html>
