package jspexp.a11_database.dto;

public class FunEmployees {
	
	private int empId;
	private String empName;
	private String emp_dept;
	private int empSalary;
	public FunEmployees() {
		// TODO Auto-generated constructor stub
	}
	public FunEmployees(int empId, String empName, String emp_dept, int empSalary) {
		this.empId = empId;
		this.empName = empName;
		this.emp_dept = emp_dept;
		this.empSalary = empSalary;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmp_dept() {
		return emp_dept;
	}
	public void setEmp_dept(String emp_dept) {
		this.emp_dept = emp_dept;
	}
	public int getEmpSalary() {
		return empSalary;
	}
	public void setEmpSalary(int empSalary) {
		this.empSalary = empSalary;
	}
	
}
