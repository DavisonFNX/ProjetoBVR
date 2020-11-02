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
    <div class="section section-danger text-justify">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-12 text-center">
            <h1 class="text-center">Upload de Arquivos</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h3 class="tt_menu"> Informações Recebidas </h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal" role="form" enctype="multipart/form-data" action="http://localhost:8080/ProjetoBVR/ServletUpload" method="post">
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Nome:</label>
                </div>
                <div class="col-sm-10">
                   <input type="text" value="${nome}" class="form-control">
                  
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Data de Nascimento:</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" value="${dataNascimento}" class="form-control">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Email:</label>
                </div>
                <div class="col-sm-10">
                  <input type="email" value="${email}" class="form-control">
                </div>
              </div> 
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputEmail3" class="control-label">Arquivo enviado:</label>
                </div>
                <div class="col-sm-10">
                <a href="http://localhost:8080/ProjetoBVR/ServletDownload">Download here!!!</a>
                </div>
              </div>                       
              
            </form>
			<a class="btn btn-danger" href="javascript:window.history.go(-1)">Voltar</a>
          </div>
        </div>
      </div>
    </div>
    
    <footer>
      <div class="navbar navbar-fixed-bottom">
        <div class="container">
          <div class="row">
          </div>
        </div>
      </div>
    </footer>  

</body></html>