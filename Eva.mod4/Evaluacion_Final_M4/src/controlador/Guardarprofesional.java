package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import modelo.Profesional;

/**
 * Servlet implementation class Guardarprofesional
 */
@WebServlet("/Guardarprofesional")
public class Guardarprofesional extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Guardarprofesional() {
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
        
      
        String nombre=request.getParameter("nombrepro");  
        String apellido=request.getParameter("apellidospro");  
        String telefono=request.getParameter("telefonopro");  
        String run=request.getParameter("runpro");  
        String titulo=request.getParameter("titulopro");
        String proyecto=request.getParameter("proyecto");
        String id=request.getParameter("id");
        
          
        Profesional p = new Profesional ();  
        p.setNombre(nombre);
        p.setApellido(apellido);
        p.setTelefono(telefono);
        p.setRun(run);
        p.setTitulo(titulo);
        p.setProyecto(proyecto);
        p.setId(id);
        
          
        int status = UsuarioDao.save(p);  
        if(status>0){  
            out.print("<h1><p>Datos guardados exitosamente!</p></h1>");  
            request.getRequestDispatcher("inicio.jsp").include(request, response);  
        }else{  
            out.println("<h1><p>No es posible grabar</p></h1><br><a href='inicio'>Volver</a>");  
        }  
          
        out.close();  
    }  
	

}
