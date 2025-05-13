package javaexp.a10_database.dto;

public class Baby {
	private String name;
	private int age;
	
	public Baby() {
		// TODO Auto-generated constructor stub
	}
	public Baby(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
