
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@page import="java.util.*"%>
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login de usuario</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<style type="text/css">
<%@ include file="CSS/estilo.css" %>
</style>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
	<header class="cabecera">
            <br>
            <h1 class="titulo" id="mensaje1">Login de usuario</h1>
            <br>
    </header>
        <br>
    <nav class="navegacion">
            <ul class="nav nav-pills">
                          
           
	            <li class="nav-item">
	                    <a class="nav-link" href="http://localhost:8090/Evaluacion_Final_M4/contacto">Contacto</a>
	            </li>
               
            </ul>
     </nav>
     
        <br>
 

	<div class="principal">	
	<form action="login2" method="POST" id="login"  novalidate class="was-validated">
                <br>
                <ul>
                <li>
                    <div class="col-md-4">
                    <label for="user">RUT del usuario: (ejemplo: 12345678-9)</label>
                    <input class="form-control"  type="text" id="user" name="user" placeholder="XXXXXXXX-Y" required>
                    <div class="invalid-feedback">
                        Debe ingresar el RUT.
                      </div>
                    </div>
                </li>
                	<div style="color: crimson;">
                    <p id="msgerror"  ></p>
                </div>
                <li>
                    <label for="password"" class="form-label">Clave:</label>
                    <input class="form-control"  style="width: 25%;"  type="password" id="password"" name="password"  maxlength="20" required> 
                    <div class="invalid-feedback">
                        Debe ingresar una clave.
                      </div>
                </li>
                <br>
                 </ul>
                
                
                
                
                
                <input type="submit" id="botoning"style="margin-left: 200px;" value="ingresar" >
               
             
               
            
            
            </form>
            
		<br>
            <div>
                <p id="msgerror" style='margin-left: 15px;' ></p>
            </div>
            <br>
            <br>

	</div>
	<br>
        <footer class="pie">
            <br>
            ® Derechos reservados 2021
            <br>
        </footer>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
		integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
		integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
		crossorigin="anonymous"></script>
</body>
</html>
<script>
    var Frut = {
        
        validaRut : function (rutCompleto) {
            rutCompleto = rutCompleto.replace("‐","-");
            if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto ))
            return false;
            var tmp   = rutCompleto.split('-');
            var digv  = tmp[1]; 
            var rut   = tmp[0];
            if ( digv == 'K' ) digv = 'k' ;
            
            return (Frut.dv(rut) == digv );
        },
        dv : function(T){
            var M=0,S=1;
            for(;T;T=Math.floor(T/10))
            S=(S+T%10*(9-M++%6))%11;
            return S?S-1:'k';
        }
        }

 
    
        $("#botoning").click(function(){
            
            if (Frut.validaRut( $("#user").val() ) ){
                $("#msgerror").html("RUT correcto");
             
                    
            } else {
                $("#msgerror").html("Error: Formato incorrecto o RUT invalido");
            
            }

                
              
        });
        
          
                     
           
    </script>