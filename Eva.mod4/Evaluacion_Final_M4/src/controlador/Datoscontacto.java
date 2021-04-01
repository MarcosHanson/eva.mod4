package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Datoscontacto
 */
@WebServlet("/datos")
public class Datoscontacto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Datoscontacto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nombre = request.getParameter("nombreu");
        String email = request.getParameter("correo");
        String telefono= request.getParameter("telefono");
        String mensaje = request.getParameter("mensaje");
        
        System.out.println("nombre: "+nombre);
        System.out.println("correo: "+email);
        System.out.println("telefono: "+telefono);
        System.out.println("mensaje: "+mensaje);
        
        RequestDispatcher rd = request.getRequestDispatcher("contacto.jsp");
		
		rd.forward(request, response);
	}

}
