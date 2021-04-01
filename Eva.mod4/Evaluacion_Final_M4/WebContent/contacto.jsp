<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de contacto</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
	
        <header class="cabecera">
            <br>
           <h1>Formulario de contacto</h1> 
            <br>
        </header>
        <br>
        <nav class="navegacion">
            <ul class="nav nav-pills">
           
                
                <li class="nav-item">
                <a class="nav-link"  href="http://localhost:8090/Evaluacion_Final_M4/Login" >Login</a>
                </li>
                
             
            </ul>
        </nav>
        <br>
		<div class="principal">
              <form action="datos" method="POST" id="contacto">
                <br>
                 <ul>
                <li>
                    <label for="nombreu">Nombre:</label>
                    <input type="text" id="nombreu" name="nombreu" class="form" >
                </li>
                <br>
                <li>
                    <label for="correo">Correo electronico:</label>
                    <input type="email" id="correo" name="correo" class="form">
                </li>
                <br>
                <li>
                    <label for="telefono">Telefono:</label>
                    <input  type="tel" id="telefono" name="telefono" class="form">
                </li>
                <br>
                <li>
                    <label for="mensaje">Mensaje:</label>
                    <br>
                    <textarea  id="mensaje" name="mensaje" class="form"></textarea>
                </li>
                </ul>
                
                    <button style='margin-left: 300px;'  type="submit" class="btn btn-secondary">Enviar</button>
                
             </form>
             
            <br>
            <br>
        </div>
        <br>
        
        <footer class="pie">
            ® Derechos reservados 2021
        </footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

</body>
</html>