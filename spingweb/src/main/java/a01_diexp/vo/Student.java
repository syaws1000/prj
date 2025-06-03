package a01_diexp.vo;

public class Student {
	private String name;
	private StudentCard studentCard;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String name) {
		super();
		this.name = name;
	}
	public Student(String name, StudentCard studentCard) {
		super();
		this.name = name;
		this.studentCard = studentCard;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public StudentCard getStudentCard() {
		return studentCard;
	}
	public void setStudentCard(StudentCard studentCard) {
		this.studentCard = studentCard;
	}
	
}
