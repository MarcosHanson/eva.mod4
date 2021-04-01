<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar cliente</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script language="javascript" type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/localization/messages_es.js"></script>
    <script>
			jQuery(function() {
                jQuery( "#editarcliente" ).validate();
                    
             });
    </script>
</head>



<body>
 <header class="cabecera">
        
        <br>
        <h1>Formulario para editar cliente</h1>
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
          
        <form action="Guardarcliente" method="post">
            <ul>
             <li>
            	<% String variable = request.getParameter("id");  %>
                <label for="id">Para el usuario ID: </label>
                <input style='margin-left: 25px;' type="text" id="id" name="id" value="<%= variable %>" readonly >
            </li>
            	
            <li>
                <label for="runclie">Run :</label>
                <input  class="form" type="text" id="runclie" name="runclie" class="required" minlength="8" min="1111111" max="99999999">
            </li>
            <br>
            <li>
                <label for="nombApelli">Nombres y Apellidos:</label>
                <input  class="form" type="text"  id="nombApelli" name="nombApelli" class="required" minlength="5">
            </li>
            <br>
            <li>
                <label for="telefono">Telefono:</label>
                <input  class="form" type="number"  id="telefono" name="telefono" class="required" minlength="9">
            </li>
            <br>
            <li>
                <label for="afp">Afp:</label>
                <input  class="form" type="text" id="afp" name="afp" class="required" minlength="4">
            </li>
            <br>
            <li>
                <label for="sistsalud">Sistema de salud:</label>
                <input  class="form" type="text" id="sistsalud" name="sistsalud" class="required" minlength="6">
            </li>
            <br>
            <li>
                <label for="direccion">Dirección:</label>
                <input  class="form" type="text" id="direccion" name="direccion" class="required" minlength="4">
            </li>
            <br>
            <li>
                <label for="comuna">Comuna:</label>
                <input  class="form" type="text" id="comuna" name="comuna" class="required" minlength="4">
            </li>
            <br>
            <li>
                <label for="edad">Edad:</label>
                <input  class="form" type="number" id="edad" name="edad class="required" minlength="1" min="1" max="99">
            </li>
            </ul>
            
                <button style='margin-left: 240px;' type="submit" class="btn btn-secondary">Modificar datos</button>
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