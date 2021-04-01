package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import modelo.Usuario;

/**
 * Servlet implementation class ServletGuardar
 */
@WebServlet("/guardarusuario")
public class GuardarUsuario extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        
	      
	        String nombre=request.getParameter("ingreso_nombres");  
	        String apellido=request.getParameter("ingreso_apellidos");  
	        String fechanac=request.getParameter("ingreso_fechanac");  
	        String run=request.getParameter("ingreso_run");  
	        String tipouser=request.getParameter("combo");
	          
	        Usuario u = new Usuario();  
	        u.setNombre(nombre);
	        u.setApellido(apellido);
	        u.setFechanac(fechanac);
	        u.setRun(run);
	        u.setTipousuario(tipouser);
	        
	          
	        int status = UsuarioDao.save(u);  
	        if(status>0){  
	            out.print("<h1><p>Datos guardados exitosamente!</p></h1>");  
	            request.getRequestDispatcher("inicio.jsp").include(request, response);  
	        }else{  
	            out.println("<h1><p>No es posible grabar</p></h1><br><a href='inicio'>Volver</a>");  
	        }  
	          
	        out.close();  
	    }  
}
