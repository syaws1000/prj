package jspexp.a10_database.dto;

public class Family {
	private int personId;
	private String name;
	private int parentId;
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
	
}
