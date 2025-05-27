package jspexp.a10_database.dto;

public class Family {
	private int personId;
	private String name;
	private int parentId;
	private String pname;
	public Family() {
		// TODO Auto-generated constructor stub
	}
	
	public Family(String name, int parentId) {
		this.name = name;
		this.parentId = parentId;
	}

	public Family(int personId, String name, int parentId) {
		this.personId = personId;
		this.name = name;
		this.parentId = parentId;
	}
	
	
	public Family(String name, String pname) {
		this.name = name;
		this.pname = pname;
	}

	public Family(int personId, String name, int parentId, String pname) {
		this.personId = personId;
		this.name = name;
		this.parentId = parentId;
		this.pname = pname;
	}

	public int getPersonId() {
		return personId;
	}

	public void setPersonId(int personId) {
		this.personId = personId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	
}
