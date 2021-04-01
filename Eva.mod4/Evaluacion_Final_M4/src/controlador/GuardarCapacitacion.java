package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CapacitacionDao;
import dao.UsuarioDao;
import modelo.Capacitacion;
import modelo.Usuario;

/**
 * Servlet implementation class GuardarCapacitacion
 */
@WebServlet("/GuardarCapacitacion")
public class GuardarCapacitacion extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        
	       String rutCliente=request.getParameter("ingreso_rut");
	       String dia=request.getParameter("ingreso_fecha");
	       String hora=request.getParameter("ingreso_hora");
	       String lugar=request.getParameter("ingreso_lugar");
	       String duracion=request.getParameter("ingreso_duracion");
	       String cantidad=request.getParameter("ingreso_asistentes");
	        
	          
	        Capacitacion c = new Capacitacion();  
	        c.setRutCliente(rutCliente);
	        c.setDia(dia);
	        c.setHora(hora);
	        c.setLugar(lugar);
	        c.setDuracion(duracion);
	        c.setCantidadAsistentes(cantidad);
	        
	
	        
	        int status = CapacitacionDao.save(c);  
	        if(status>0){  
	            out.print("<h1><p>Datos guardados exitosamente!</p></h1>");  
	            request.getRequestDispatcher("inicio.jsp").include(request, response);  
	        }else{  
	            out.println("<h1><p>No es posible grabar</p></h1><br><a href='inicio'>Volver</a>");  
	        }  
	          
	        out.close();  
	    }  
}
