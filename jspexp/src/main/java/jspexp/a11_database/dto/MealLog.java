package jspexp.a11_database.dto;

import java.util.Date;

public class MealLog {
	private int mealId;
	private String studentName;
	private String menu;
	private Date mealDate;
	public MealLog() {
		// TODO Auto-generated constructor stub
	}
	public MealLog(int mealId, String studentName, String menu, Date mealDate) {
		this.mealId = mealId;
		this.studentName = studentName;
		this.menu = menu;
		this.mealDate = mealDate;
	}
	public int getMealId() {
		return mealId;
	}
	public void setMealId(int mealId) {
		this.mealId = mealId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public Date getMealDate() {
		return mealDate;
	}
	public void setMealDate(Date mealDate) {
		this.mealDate = mealDate;
	}
	
}
