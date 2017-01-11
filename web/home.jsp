<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Registro Voluntarios</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<link rel="stylesheet" href="stylesheets/styles.css">
  </head>

  <body>
    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">Inicio</a>
          <a class="navbar-brand" href="Conferencia">Conferencias</a>
          <a class="navbar-brand" href="#">Asistentes</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div class="container voluntarios">
      <h2>Conferencias a Realizarse</h2>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalVoluntarios">Registrar Nueva</button>
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>Nombre</th>
            <th>Fecha</th>
            <th>Descripcion</th>
            <th></th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Juan Perez</td>
            <td>Guayaquil</td>
            <td>0987961212</td>
            <td><a href="#"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
            <td><a href="#"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Rodrigo Segovia</td>
            <td>Quito</td>
            <td>0978989891</td>
            <td>28</td>
            <td>28</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Jose Sanchez</td>
            <td>Guayaquil</td>
            <td>0912322321</td>
            <td>editar</td>
            <td>elimnar</td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalVoluntarios" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <form method="post" action="Conferencia">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Ingresar Conferencia</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                  <input type="text" class="form-control" id="inputNombre" name="inputNombre" placeholder="Nombre de la conferencia">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" id="inputFecha" name="inputCiudad" placeholder="Fecha de la conferencia">
                </div>
                <div class="form-group">
                    <textarea class="form-control" rows="5" id="comment" placeholder="Algo que agregar..?"></textarea>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
              <button type="submit" class="btn btn-primary">Registrar</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  </body>
</html>