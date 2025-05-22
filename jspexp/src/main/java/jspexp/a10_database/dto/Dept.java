package jspexp.a10_database.dto;
// jspexp.a10_database.dto.Dept
public class Dept {
	private int deptno; 
	private String dname; // "A"
	private String loc; // "B"
	public Dept() {
		// TODO Auto-generated constructor stub
	}
	// 검색 즉, where 조건에 들어갈 데이터의 생성자 형식으로 선언..
	public Dept(String dname, String loc) {
		this.dname = dname;
		this.loc = loc;
	}

	public Dept(int deptno, String dname, String loc) {
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
