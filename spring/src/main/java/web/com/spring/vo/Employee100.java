package web.com.spring.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Employee100 {
/*
    employee_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    hire_date DATE,
    salary NUMBER(10, 2)
*/
	// employeeId firstName lastName email hireDate salary
	private int employeeId;
	private String firstName;
	private String lastName;
	private String email;
	// 입사일을 입력으로 처리할 때..
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date hireDate;
	private int salary;
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
	
	
}
