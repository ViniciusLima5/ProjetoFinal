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
                            <i class="iconefiltro fa fa-building prefix"></i>
                            <label for="filtroNomeEmpresa"><b>Nome da empresa:</b></label>
                            <input style="padding-bottom: 10px;" type="text" class="txtinput form-control" id="filtroNome">
                          
                        </div>
                        <div class="col-sm-2 ">
                            
                            <select id="filtroCategoriaEmpresa" class="form-control centered-col">
                                <option selected disabled>Categoria</option>
                                <option>Alimentação</option>
                                <option>Beleza</option>
                            </select>
                        </div>
                        <div class="col-sm-3 md-form">
                            <i class="iconefiltro fa fa-map-marker prefix"></i>
                            <label for="filtroCidadeEmpresa"><b>Cidade:</b></label>
                            <input type="text" class="txtinput form-control" id="filtroCiadeEmpresa">
                        </div>
                        <div class="col-sm-2 md-form">
                            <i class="iconefiltro fa fa-location-arrow prefix"></i>
                            <label for="filtroBairroEmpresa"><b>Bairro:</b></label>
                            <input type="text" class="txtinput form-control" id="filtroBairroEmpresa">
                        </div>
                        <div class="col-sm-2">
                            <button style="margin-top: 10px" type="button" class="btn btn-amber"><i style="margin-right: 5px;" class="fa fa-search" aria-hidden="true"></i>FILTRAR</button>
                        </div>
                    </div>
                </form>
                <hr>
            </div>	
	</section>

	<section class="contato">
		<div class="container">
                    <div class="row empresa">
                    
                        <div class="col-sm-2">
                            <img src="res/img/logo_modelo.png">
                        </div>
                        <div class="bold col-sm-4">
                            <h4 style="" class="boldTitulo">PREFEITURA DE PRAIA GRANDE</h4>
                            <h6 class="bold" id="italic">Lorem ipsum dolor sit amet, pri constituto argumentum definitionem ei.
                                        Tale invidunt adversarium nam te.</h6>
                            <h6 class="bold">Telefone: (13)12345-6789</h6>
                            <h6 class="bold">Endereço: Praça XV de Janeiro, Boqueirão. Praia Grande - SP</h6>
                        </div>
                        <div class="col-sm-2">
                            <img src="res/img/logo_modelo.png">
                        </div>
                        <div class="bold col-sm-4">
                            <h4 class="boldTitulo">FATEC-PG</h4>
                            <h6 class="bold" id="italic">Lorem ipsum dolor sit amet, pri constituto argumentum definitionem ei.
                                        Tale invidunt adversarium nam te.</h6>
                            <h6 class="bold">Telefone: (13)12345-6789</h6>
                            <h6 class="bold">Endereço: Praça XV de Janeiro, Boqueirão. Praia Grande - SP</h6>
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
