package a01_diexp.vo4;

import org.springframework.stereotype.Component;

@Component
public class PetOwner {
	private String name;
	private int age;
	public PetOwner() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PetOwner(String name, int age) {
		super();
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
