package modelo;

public class User implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
// atributos
	protected int id;
	protected String name;
	protected String email;
	protected String grado;

//constructor vacío
	public User() {
	}

	public User(String name, String email, String grado) {
		this.name = name;
		this.email = email;
		this.grado = grado;
	}

	public User(int id, String name, String email, String grado) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.grado = grado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getgrado() {
		return grado;
	}

	public void setgrado(String grado) {
		this.grado = grado;
	}
}