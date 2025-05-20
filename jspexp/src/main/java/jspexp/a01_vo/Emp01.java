package jspexp.a01_vo;
// import = "jspexp.a01_vo.Emp01"
public class Emp01 {
	private String ename;
	private String job;
	private double sal;
	public Emp01() {
		// TODO Auto-generated constructor stub
	}
	public Emp01(String ename, String job, double sal) {
		this.ename = ename;
		this.job = job;
		this.sal = sal;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	
}
