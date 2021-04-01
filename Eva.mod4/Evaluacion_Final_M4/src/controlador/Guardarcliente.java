package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import modelo.Cliente;

/**
 * Servlet implementation class Guardarcliente
 */
@WebServlet("/Guardarcliente")
public class Guardarcliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Guardarcliente() {
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
        String edad=request.getParameter("edad");
        String comuna=request.getParameter("comuna");
        String id=request.getParameter("id");
        String direccion=request.getParameter("direccion");
        String afp=request.getParameter("afp");
        String sistsalud=request.getParameter("sistsalud");
        
        Cliente c = new Cliente ();  
        c.setNombre(nombre);
        c.setApellido(apellido);
        c.setTelefono(telefono);
        c.setRun(run);
        c.setEdad(edad);
        c.setComuna(comuna);
        c.setId(id);
        c.setDireccion(direccion);
        c.setAfp(afp);
        c.setSalud(sistsalud);
        
          
        int status = UsuarioDao.save(c);  
        if(status>0){  
            out.print("<h1><p>Datos guardados exitosamente!</p></h1>");  
            request.getRequestDispatcher("inicio.jsp").include(request, response);  
        }else{  
            out.println("<h1><p>No es posible grabar</p></h1><br><a href='inicio'>Volver</a>");  
        }  
          
        out.close();  
	}

}
