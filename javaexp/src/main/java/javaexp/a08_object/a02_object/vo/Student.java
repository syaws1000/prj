package javaexp.a08_object.a02_object.vo;

public class Student {
	private String name;
	private int age;
	private String studentId;
	public Student() {
		// TODO Auto-generated constructor stub
	}
	public Student(String name, int age, String studentId) {
		this.name = name;
		this.age = age;
		this.studentId = studentId;
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
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
	
}
