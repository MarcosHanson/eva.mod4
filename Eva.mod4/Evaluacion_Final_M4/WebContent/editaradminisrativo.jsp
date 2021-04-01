<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Administrativo</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


</head>



<body>
 <header class="cabecera">
        <br>
        <h1>Editar Administrativo</h1>
        <br>
    </header>
    <br>
   <nav class="navegacion">
            <ul class="nav nav-pills">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="inicio">Inicio</a>
                </li>
                
               
                 <li class="nav-item">
                <a class="nav-link"  href="http://localhost:8090/Evaluacion_Final_M4/crearusuario" >Crear usuario</a>
                </li>
            
            
                <li class="nav-item">
                <a class="nav-link"  href="http://localhost:8090/Evaluacion_Final_M4/crearcapacitacion">Crear capacitaciones</a>
                </li>
                
            	 <li class="nav-item">
                <a class="nav-link"  href="http://localhost:8090/Evaluacion_Final_M4/ListaDeUsuario">Lista de Usuarios</a>
                </li>
                 <li class="nav-item">
                <a class="nav-link"  href="http://localhost:8090/Evaluacion_Final_M4/ListarCapacitaciones">Listar Capacitaciones</a>
                </li>
            
           
	            <li class="nav-item">
	                    <a class="nav-link" href="http://localhost:8090/Evaluacion_Final_M4/contacto">Contacto</a>
	            </li>
               
                <li class="nav-item">
                <a class="nav-link active" style="background-color: rgb(57, 65, 65);"  href="Logout" >Salir</a>
                </li>
            </ul>
        </nav>
        <br>
    <div class="principal">
        <br>
        <form action="guardaradministrativo" method="post">
             <ul>
               <li>
            	<% String variable = request.getParameter("id");  %>
                <label for="id">Para el usuario ID: </label>
                <input style='margin-left: 25px;' type="text" id="id" name="id" value="<%= variable %>" readonly >
            </li>
             <li>
                <label for="runadmin">RUN Administrativo</label>
                <input  class="form" type="text"  id="runadmin" name="runadmin">
             </li>
             <br>
            <li>
                <label for="nombreadmin">Nombres Administrativo</label>
                <input  class="form" type="text" id="nombreadmin" name="nombreadmin">
            </li>
            <br>
            <li>
                <label for="apellidosadmin">Apellidos Administrativo</label>
                <input  class="form" type="text" id="apellidosadmin" name="apellidosadmin">
            </li>
            <br>
            <li>
                <label for="correoadmin">Correo Administrativo</label>
                <input  class="form" type="text"  id="correoadmin" name="correoadmin">
            </li>
            <br>
            <li>
                <label for="areaadmin">Área a la que pertenece</label>
                <input  class="form" type="text"  id="areaadmin" name="areaadmin">
            </li>
			</ul>
            <br>
            <button style='margin-left: 50px;'  type="submit" class="btn btn-secondary">Modificar datos</button>
                <br>
                <br>
                <br>
         </form>
         
      
    </div>
    <br>
    
    <footer class="pie">
® Derechos reservados 2021
    </footer>
    
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    
</body>
</html>