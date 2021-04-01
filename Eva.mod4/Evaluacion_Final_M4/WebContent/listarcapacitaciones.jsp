<%@ page import ="modelo.Capacitacion" %>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de capacitaciones</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>
</head>
<body>
	
        <header class="cabecera">
            <br>
            <h1>Listado de capacitaciones</h1>
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
      <div class="table-responsive ">
	<%
	List<Capacitacion> lista = (List<Capacitacion>) request.getAttribute("listadoCapacitacion");
	%>
		
		<table class="table table-bordered table caption-top"
			style="color: aliceblue;">
			<thead> 
				<th scope = "col">ID capacitación</th>
				<th scope = "col">Fecha capacitacion</th>
				<th scope = "col">Hora capacitacion</th>
				<th scope = "col">Cliente</th>
			</thead>
			<tbody>
			<%
			for (Capacitacion cap : lista ){
			%>
			<tr>
				<th><%= cap.getIdCapacitacion() %></th>
				<td><%= cap.getDia()  %></td>
				<td><%= cap.getHora() %></td>
				<td><%= cap.getRutCliente() %></td>
			</tr>
			<% } %>
			</tbody>	
		</table>
	</div>
         
        </div>
        <br>
        
        <footer class="pie">
            ® Derechos reservados 2021
        </footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

</body>
</html>