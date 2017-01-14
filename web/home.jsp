<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelos.Conferencia"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Conferencias</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<link rel="stylesheet" href="stylesheet/styles.css">
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
        <% List<Conferencia> conferencias = (List<Conferencia>) request.getAttribute("conferencias");
                int cont = 0;
                SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
                for (Conferencia con : conferencias) {
                    
        
        %>
        <tbody>
          <tr>
            
            <th scope="row"><%= ++cont%></th>
            <td><%= con.getNombre() %></td>
            <td><%= formatoDelTexto.format(con.getFecha()) %></td>
            <td><%= con.getDescripcion() %></td>
            <td style="display: none" ><%= con.getId() %></td>
            <td>          
                    
                <button type="submit" class="btn btn-primary editar" ><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>Editar</button>
            </td>
            <td>
                <form method="post" action="Conferencia">
                    <div class="form-group">
                      <input type="hidden" class="form-control" id="action" name="action" value="eliminar">
                    </div>   
                <button type="submit" class="btn btn-primary" onclick="eliminar();"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>Eliminar</button>
                </form>
            </td>
          </tr>
          <% } %>
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
                  <input type="text" class="form-control" id="inputNombre" name="nombre" placeholder="Nombre de la conferencia">
                </div>
                <div class="form-group">
                  <input type="date" class="form-control" id="inputFecha" name="fecha" placeholder="Fecha de la conferencia">
                </div>
                <div class="form-group">
                    <textarea class="form-control" rows="5" id="comment" name="descripcion" placeholder="Algo que agregar..?"></textarea>
                </div>
                <div class="form-group">
                  <input type="hidden" class="form-control" id="action" name="action" value="agregar">
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
    <script src="javascript/conferencia.js"></script>
    <script>
        function editar(){
            
            request.getAttribute("usuarios");
        }
        
        function eliminar(){
            
        }
        
        
    </script>
  </body>
</html>