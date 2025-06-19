package web.com.springweb.vo;

public class Student {
	private int studentId;
	private String name;
	private int math;
	private int eng;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int studentId, String name, int math, int eng) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.math = math;
		this.eng = eng;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	
}
