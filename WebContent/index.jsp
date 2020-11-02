<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://localhost:8080/ProjetoBVR/lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/ProjetoBVR/lib/js/bootstrap.min.js"></script>
    <link href="http://localhost:8080/ProjetoBVR/lib/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://localhost:8080/ProjetoBVR/lib/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="http://localhost:8080/ProjetoBVR/lib/css/padrao.css" rel="stylesheet" type="text/css">
  </head><body>
  <title>Página de Autenticação</title>
    <div class="section section-primary text-justify">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-12 text-center">
            <h1 class="text-center">Preencha as Informações</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h3 class="tt_menu"> Dados Pessoais </h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal" role="form" action="http://localhost:8080/ProjetoBVR/ServletControle" enctype="multipart/form-data" method="post">
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Nome:</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" name="nome" class="form-control" id="inputNome" title="Digite o seu nome." required>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Data de Nascimento:</label>
                </div>
                <div class="col-sm-10">
                  <input type="date" name="datanascimento" class="form-control" id="inputDATA" title="Preencha a data de nascimento." required>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Email:</label>
                </div>
                <div class="col-sm-10">
                  <input type="email" name="email" class="form-control" id="inputEmail" title="Digite o seu e-mail." required>
                </div>
              </div>
             
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Selecione o arquivo:</label>
                </div>
                <div class="col-sm-10">
               	<input type="file" name="file2" />
                </div>
              </div>    
                           
              <button type="submit" class="btn btn-danger" value="upload">Enviar</button>
            </form>
      
          </div>
        </div>
      </div>
    </div>
    
    <footer>
      <div class="navbar navbar-fixed-bottom ">
        <div class="container">
          <div class="row">
          </div>
        </div>
      </div>
    </footer>  

</body></html>