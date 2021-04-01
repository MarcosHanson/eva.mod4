<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario para crear Usuario</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>
</head>
<body>
	
        <header class="cabecera">
            <br>
           <h1>Formulario para crear Usuario</h1>
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
        <form action="/ServletGuardar" method="post">
            <ul>
            <li>
                <label for="nombreu">Nombres: </label>
                <input style="margin-left: 103px;" type="text" id="ingreso_nombres"" name="ingreso_nombres" required>
            </li>
            <br>
            <li>
                <label for="apellidos">Apellidos: </label>
                <input style="margin-left: 103px;" type="text" id="ingreso_apellidos" name="ingreso_apellidos" required>
            </li>
            <br>
            <li>
                <label for="Fecha naciemiento">Fecha de Nacimiento: </label>
                <input style="margin-left: 5px;" type="date"  id="ingreso_fechanac" name="ingreso_fechanac" required>
            </li>
            <br>
            <li>
                <label for="run">RUN (solo numeros): </label>
                <input style="margin-left: 140px;" type="text"  id="ingreso_run" name="ingreso_run" required>
            </li>
            <br>
            <li>
                <label for="type">Tipo de usuario: </label>
                <select style="margin-left: 50px;" name="combo" required>
                    <option value="CLIENTE">Cliente</option>
                    <option value="PROFESIONAL">Profesional</option> 
                    <option value="ADMINISTRATIVO">Administrativo</option>
                  </select>
            </li>
            </ul>
            <br>
           
              
            
            <br>
            <button style='margin-left: 250px;'  type="submit" value="guardar usuario" class="btn btn-secondary">Crear Usuario</button>
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