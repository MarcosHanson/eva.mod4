<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario para crear capacitación</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>
</head>
<body>
	
        <header class="cabecera">
            <br>
            <h1>Formulario para crear capacitación</h1>
            <br>
        </header>
        <br>
        <nav class="navegacion">
            <ul class="nav nav-pills">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="inicio">Inicio</a>
                </li>
                
                                
                 <li class="nav-item">
                <a class="nav-link"  href="crearusuario" >Crear usuario</a>
                </li>
            
            
                <li class="nav-item">
                <a class="nav-link"  href="crearcapacitacion">Crear capacitaciones</a>
                </li>
                
            	 <li class="nav-item">
                <a class="nav-link"  href="ListaDeUsuario">Lista de Usuarios</a>
                </li>
                 <li class="nav-item">
                <a class="nav-link"  href="ListarCapacitaciones">Listar Capacitaciones</a>
                </li>
            
           
	            <li class="nav-item">
	                    <a class="nav-link" href="contacto">Contacto</a>
	            </li>
	            
                <li class="nav-item">
                <a class="nav-link active" style="background-color: rgb(57, 65, 65);"  href="Logout" >Salir</a>
                </li>
            </ul>
        </nav>
        <br>
		<div class="principal">
             <br>
        <form >
            <ul>
            <li>
                <label for="nombreu">Nombre cliente:</label>
                <input style='margin-left: 45px;' type="text" id="nombreu" name="ingreso_nombre" required>
            </li>
            <br>
            <li>
                <label for="Fecha">Fecha capacitación:</label>
                <input style='margin-left: 13px;' type="date"  id="Fecha" name="ingreso_fecha" required>
            </li>
            <br>
            <li>
                <label for="hora">Hora capacitación:</label>
                <input style='margin-left: 23px;' type="time"  id="hora" name="ingreso_hora" required>
            </li>
            <br>
            <li>
                <label for="lugar">Lugar capacitación:</label>
                <input style='margin-left: 15px;' type="text" id="lugar" name="ingreso_lugar" required>
            </li>
            <br>
            <li>
                <label for="duracion">Duración en minutos:</label>
                <input type="number" id="duracion" name="ingreso_duracion" required>
            </li>
            </ul>
            
                <button style='margin-left: 240px;' type="submit" class="btn btn-secondary">Crear capacitación</button>
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