package javaexp.a08_object.a03_access.vo;

// 외부에서 선언 가능
public class Person {
	// 다른 클래스에서 접근 불가능 필드..
	private String name;
	private int age;
	private String loc;
	public Person() {
		
	}
	public Person(String name, int age, String loc) {
		this.name = name;
		this.age = age;
		this.loc = loc;
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
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
	

}
