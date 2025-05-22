package jspexp.a01_vo;

public class Recipe {
	private String name;
	private String ingredients;
	private String difficulty;
	public Recipe() {
		// TODO Auto-generated constructor stub
	}
	public Recipe(String name, String ingredients, String difficulty) {
		this.name = name;
		this.ingredients = ingredients;
		this.difficulty = difficulty;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	
}
