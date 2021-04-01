package modelo;
/**

 * Esta clase extiende de Usuario, tiene atributos, constructores con y sin parametro,
 * mutadores y accesores, metodo analizar usario, metodo toString y listar Usuario

 * @authores: Mauricio Sepulveda, Mauricio Marin, Nicolas Bonilla, Marcos Hanson

 * @version: 8/02/2021A

 */
public class Administrativo extends Usuario{
	// declaracion de variables
	private String area;
	private String correo;
	// constructor con parametro
	public Administrativo(String nombre, String fechanac, String run, String area, String correo) {
		super(nombre, fechanac, run);
		this.area = area;
		this.correo = correo;
	}
	// constructor sin parametro
	public Administrativo() {
		super();
	}
	//mutadores y accesores
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExperiencia() {
		return correo;
	}

	public void setExperiencia(String experiencia) {
		this.correo = experiencia;
	}



}
