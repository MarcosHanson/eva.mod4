package modelo;


public class Usuario {
	
	private String run;
	private String nombre;
	private String apellido;
	private String tipousuario;
	private String fechanac;
	private String id;
	
	
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Usuario(String run, String nombre, String apellido, String tipousuario, String fechanac, String id) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.apellido = apellido;
		this.tipousuario = tipousuario;
		this.fechanac = fechanac;
		this.id = id;
	}
	public String getRun() {
		return run;
	}
	public void setRun(String run) {
		this.run = run;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getTipousuario() {
		return tipousuario;
	}
	public void setTipousuario(String tipousuario) {
		this.tipousuario = tipousuario;
	}
	public String getFechanac() {
		return fechanac;
	}
	public void setFechanac(String fechanac) {
		this.fechanac = fechanac;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}


	

}
