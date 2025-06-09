package a01_diexp.vo4;

import org.springframework.stereotype.Component;

@Component
public class GroupPerson {
	private String tname;  
	private Person person; // 1:1관계 클래스 선언..
	public GroupPerson() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GroupPerson(String tname) {
		super();
		this.tname = tname;
	}
	public GroupPerson(String tname, Person person) {
		super();
		this.tname = tname;
		this.person = person;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	
	
	
}
