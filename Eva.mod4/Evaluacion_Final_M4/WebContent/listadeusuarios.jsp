<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Usuarios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>

</head>
<body>
	
        <header class="cabecera">
            <br>
            <h1>Lista de Usuarios</h1>
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
        <div class="table-responsive ">
	        
	         <%		List<Usuario> inscripciones = (List<Usuario>) request.getAttribute("listado");		%>
	         
		<table class="table table-bordered table caption-top" style="color: aliceblue;">
			<thead>
				<tr>
					<th scope="col">RUN</th>
					<th scope="col">Nombre</th>
					<th scope="col">Apellidos</th>
					<th scope="col">Tipo de usuario</th>
					<th scope="col">Editar usuario</th>
				</tr>
			</thead>
			<tbody>
			<% 
			for (Usuario dato : inscripciones){ 
			%>
	
				<tr>
					
					<td><%=dato.getRun() %></td>
					<td><%=dato.getNombre() %></td>
					<td><%=dato.getApellido() %></td>
					<td><%=dato.getTipousuario() %></td>
					<td>
					<form action="<%=dato.getTipousuario() %>">
					<input type="text" id="id" name="id" value="<%=dato.getId() %>" readonly >
					<button  type="submit" class="btn btn-secondary">Modificar datos</button>
					</form>
					</tr>
				<% }
			%>
	
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