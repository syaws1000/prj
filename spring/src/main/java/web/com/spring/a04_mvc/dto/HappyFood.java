package web.com.spring.a04_mvc.dto;

public class HappyFood {
	private int foodId; 
	private String foodName; 
	private String happinessLevel;
	public int getFoodId() {
		return foodId;
	}
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getHappinessLevel() {
		return happinessLevel;
	}
	public void setHappinessLevel(String happinessLevel) {
		this.happinessLevel = happinessLevel;
	}
	
}
