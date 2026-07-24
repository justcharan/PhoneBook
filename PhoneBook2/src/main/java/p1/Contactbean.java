package p1;

import java.io.Serializable;

public class Contactbean implements Serializable {
	private String name ,email,phno,abt;
	private int id;
	public Contactbean() {}
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
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getAbt() {
		return abt;
	}
	public void setAbt(String abt) {
		this.abt = abt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
