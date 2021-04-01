package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import modelo.Administrativo;

/**
 * Servlet implementation class guardaradministrativo
 */
@WebServlet("/guardaradministrativo")
public class Guardaradministrativo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Guardaradministrativo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        
	      
	        String nombre=request.getParameter("nombreadmin");  
	        String apellido=request.getParameter("apellidosadmin");  
	        
	        String run=request.getParameter("runadmin");  
	        String correo=request.getParameter("correoadmin");
	        String area=request.getParameter("areaadmin");
	        String id=request.getParameter("id");
	          
	        Administrativo a = new Administrativo();  
	        a.setNombre(nombre);
	       a.setApellido(apellido);
	       a.setRun(run);
	       a.setArea(area);
	       a.setId(id);
	       a.setcorreo(correo);
	        
	          
	        int status = UsuarioDao.save(a);  
	        if(status>0){  
	            out.print("<h1><p>Datos guardados exitosamente!</p></h1>");  
	            request.getRequestDispatcher("inicio.jsp").include(request, response);  
	        }else{  
	            out.println("<h1><p>No es posible grabar</p></h1><br><a href='inicio'>Volver</a>");  
	        }  
	          
	        out.close();  
	    }  
	

}
