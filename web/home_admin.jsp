<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar_logado.jspf"%>
        
        <section class="acoes-estoque">
  <div class="container">
      <div class="row">
        <div class="col-lg-6 centered-col">
        <button data-toggle="modal" data-target="#modalAdicionar" type="button" class=" btn btn-light-green"><i style="margin-right: 5px;" class="fa fa-plus fa-lg" aria-hidden="true"></i>Adicionar Empresa</button>
      </div>
      
      <div class="col-lg-6 centered-col">
        <button data-toggle="modal" data-target="#modalExcluir" class="  btn btn-danger"><i style="margin-right: 5px;" class="fa fa-close fa-lg" aria-hidden="true"></i> Remover empresa</button>
      </div>
      </div>

    
  </div>
</section>
<section class="tabela-estoque content">
	<div style="padding-top: 50px;" class="container">
	<div class="row">
            <div class="col-sm-12 centered-col">
            <input style="text-align: center; margin-bottom: 30px;" type="text" id="myInput" onkeyup="myFunction()" placeholder="Digite o nome da empresa para pesquisar na tabela...">
            </div>
		<table id="myTable" class="table table-bordered table-hover">
  <thead class="blue lighten-3">
    <tr class="header">
      <th width="5%">Código</th>
      <th>Nome</th>
      <th>Descrição</th>
      <th width="10%">Cidade</th>
      <th width="10%">Bairro</th>
      <th width="15%">Rua</th>
      <th width="15%">Telefone</th>
      <th width="8%">Excluir/Alterar</th>

    </tr>
  </thead>
  <tbody>
    <tr class="table-info">
      <th scope="row">1</th>
      <td>Jose</td>
      <td>Lorem</td>
      <td>Praia Grande</td>
      <td>Boqueirão</td>
      <td>Rua do Teste, nº 361</td>
      <td>(13)12345-6789</td>
      <td><i style="margin-right: 5px;" class="fa fa-close fa-2x" aria-hidden="true"></i> <i style="margin-left: 5px;" class="fa fa-refresh fa-2x" aria-hidden="true"></i></td>
    </tr>
    <tr class="table-info">
      <th scope="row">1</th>
      <td>Caros</td>
      <td>Lorem</td>
      <td>Praia Grande</td>
      <td>Boqueirão</td>
      <td>Rua do Teste, nº 361</td>
      <td>(13)12345-6789</td>
      <td><i style="margin-right: 5px;" class="fa fa-close fa-2x" aria-hidden="true"></i> <i style="margin-left: 5px;" class="fa fa-refresh fa-2x" aria-hidden="true"></i></td>
    </tr>
    <tr class="table-info">
      <th scope="row">1</th>
      <td>Vinicius</td>
      <td>Lorem</td>
      <td>Praia Grande</td>
      <td>Boqueirão</td>
      <td>Rua do Teste, nº 361</td>
      <td>(13)12345-6789</td>
      <td><i style="margin-right: 5px;" class="fa fa-close fa-2x" aria-hidden="true"></i> <i style="margin-left: 5px;" class="fa fa-refresh fa-2x" aria-hidden="true"></i></td>
    </tr>
    <tr class="table-info">
      <th scope="row">1</th>
      <td>Candido</td>
      <td>Lorem</td>
      <td>Praia Grande</td>
      <td>Boqueirão</td>
      <td>Rua do Teste, nº 361</td>
      <td>(13)12345-6789</td>
      <td><i style="margin-right: 5px;" class="fa fa-close fa-2x" aria-hidden="true"></i> <i style="margin-left: 5px;" class="fa fa-refresh fa-2x" aria-hidden="true"></i></td>
    </tr>
    
  </tbody>
</table>
	</div>

</div>
</section>

 <div class="modal fade" id="modalAdicionar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog cascading-modal z-depth-1" role="document">
                
                <div class="modal-content">

                    
                    <div class="modal-header light-green white-text">
                        <h4 class="title"><i class="fa fa-plus"></i> Adicionar empresa</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">×</span>
                                                    </button>
                    </div>
                    
                    <div class="modal-body mb-0">

                        <p class="lead text-center">Cadastre as informações da empresa</p>
                        <form>
                        <div class="md-form form-sm">
                            <i class="fa fa-building prefix"></i>
                            <input required type="text" id="adicionarNomeEmpresa" class="form-control">
                            <label for="adicionarNomeEmpresa">Nome da empresa</label>
                        </div>
                        
                         <div class="md-form form-sm">
                                <i class="fa fa-list prefix"></i>
                                <input required type="text" class="form-control" id="adicionarCategoriaEmpresa"  list = "cidade">
                                <label style="color: #494949;" for="adicionarCategoriaEmpresa">Categoria:</label>
                                <datalist id="cidade">
                                    
                                    <option value="Alimentação">
                                    <option value="Compras">
                                    <option value="Entretenimento">
                                    <option value="Serviços">
                                    
                                </datalist>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-map-marker prefix"></i>
                            <input required type="text" class="form-control" id="adicionarCidadeEmpresa"  list = "cidades">
                            <label for="adicionarCidadeEmpresa">Cidade</label>
                            <datalist id="cidades">
                                <option selected disabled value="Cidade">
                                <option value="Praia Grande">
                                <option value="Guarujá">
                                <option value="Santos">
                                <option value="São Vicente">
                                <option value="Itanhaém">
                                <option value="Bertioga">
                                <option value="Mongaguá">
                                <option value="Peruíbe">
                            </datalist>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-location-arrow prefix"></i>
                            <input required type="text" id="adicionarBairroEmpresa" class="form-control">
                            <label for="adicionarBairroEmpresa">Bairro</label>
                        </div>
                        
                        <div class="md-form form-sm">
                            <i class="fa fa-road prefix"></i>
                            <input required type="text" id="adicionarRuaEmpresa" class="form-control">
                            <label for="adicionarRuaEmpresa">Rua</label>
                        </div>
                            
                        <div class="md-form form-sm">
                            <i class="fa fa-phone prefix"></i>
                            <input required type="text" data-mask="(99)999999999" id="adicionarTelefoneEmpresa" class="form-control">
                            <label for="adicionarTelefoneEmpresa">Telefone</label>
                        </div>
                            
                        <div class="md-form form-sm">
                            <i class="fa fa-list prefix"></i>
                            <textarea rows="1" cols="35" id="adicionarDescricaoEmpresa" class="form-control"></textarea>
                            <label for="adicionarDescricaoEmpresa">Descrição</label>
                        </div>
                            
                        <div class="md-form">
                            <i class="fa fa-picture-o prefix"></i>
                            <input required style="margin-left: 50px;" type="button" class="btn btn-default" id="adicionarLogoEmpresa" value="Clique para adicionar logo da empresa" onclick="document.getElementById('file').click();" />
                            <input type="file" style="display:none;" id="file" name="file"/>
                        </div>
                        <div class="text-center mt-1-half">
                            <input type="submit" class="btn btn-success" value="ADICIONAR">
                            <button class="btn btn-outline-danger waves-effect" data-dismiss="modal">CANCELAR</button>
                          
                            
                        </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>

         

    
    
    <div class="modal fade" id="modalExcluir" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog cascading-modal" role="document">
           
            <div class="modal-content">
    
               
                <div class="modal-header danger-color white-text">
                    <h4 class="title"><i class="fa fa-close"></i> Excluir empresa</h4>
                    <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                
                <div class="modal-body mb-0">
    
                    <div class="md-form form-sm">
                            <i class="fa fa-building prefix"></i>
                            <input required type="text" class="form-control" id="excluirEmpresa"  list = "empresas">
                            <label for="excluirEmpresa">Nome da empresa</label>
                            <datalist id="empresas">
<!--                                Deve pesquisar no banco de dados os nomes das empresas-->
                            </datalist>
                        </div>
    
                        
                    <div class="text-center mt-1-half">
                        <button class="btn btn-success mb-1">EXCLUIR <i class="fa fa-check ml-1"></i></button>
                    </div>
    
                </div>
            </div>
           
        </div>
    </div>
        
        
            
        
        <%@include file="WEB-INF/jspf/modal_login.jspf"%>
        <%@include file="WEB-INF/jspf/modal_recuperar_senha.jspf"%>
        <%@include file="WEB-INF/jspf/modal_contato.jspf"%>
        <%@include file="WEB-INF/jspf/footer_amarelo.jspf"%>
    </body>
</html>
