package modelo;


/**

 * Esta clase extiende de Usuario, tiene atributos, constructores con y sin parametro,
 * mutadores y accesores, metodo analizar usario, metodo toString y listar Usuario

 * @authores: Mauricio Sepulveda, Mauricio Marin, Nicolas Bonilla, Marcos Hanson

 * @version: 8/02/2021A

 */
public class Profesional extends Usuario {
	
	//declaracion de atributos
	private String titulo;
	private String telefono;
	private String proyecto;

	// constructor vacio
	public Profesional() {
		super();
	}
	
	// constructor con parametros de la misma clase y de la clase padre Usuario
	public Profesional(String nombre, String fechanac, String run, String titulo, String proyecto, String telefono) {
		super( nombre, fechanac, run);
		this.titulo = titulo;
		this.telefono = telefono;
		this.proyecto = proyecto;
	}

	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getProyecto() {
		return proyecto;
	}

	public void setProyecto(String proyecto) {
		this.proyecto = proyecto;
	}

	
}
