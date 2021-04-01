package modelo;
/**

 * Esta clase extiende de Usuario, tiene atributos, constructores con y sin parametro,
 * mutadores y accesores, metodo analizar usario, metodo toString, listar Usuario,
 * obtenerNombre y obtenerSistemaDeSalud

 * @authores: Mauricio Sepulveda, Mauricio Marin, Nicolas Bonilla, Marcos Hanson

 * @version: 8/02/2021A

 */
public class Cliente extends Usuario {

	// declaracion de atributpos
	private Integer rut;
	private String nombres;
	private String apellidos;
	private String telefono;
	private String afp;
	private String salud;
	private String direccion;
	private String comuna;
	private String edad;

	//constructor vacio
	public Cliente() {
		super();
	}
	//constructor con parametros de la propia clase y heredados de la clase padre Usuario
	public Cliente(String nombre, String fechanac, String run, Integer rut, String nombres, String apellidos,
			String telefono, String afp, String salud, String direccion, String comuna, String edad) {
		super(nombre, fechanac, run);
		this.rut = rut;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.salud = salud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
	}

	//mutadores y accesores
	public Integer getRut() {
		return rut;
	}

	public String getNombres() {
		return nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public String getTelefono() {
		return telefono;
	}

	public String getAfp() {
		return afp;
	}

	public String getSalud() {
		return salud;
	}

	public String getDireccion() {
		return direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public String getEdad() {
		return edad;
	}

	public void setRut(Integer rut) {
		this.rut = rut;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public void setSalud(String salud) {
		this.salud = salud;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public void setEdad(String edad) {
		this.edad = edad;
	}
	

	

}
