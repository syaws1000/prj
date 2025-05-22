package jspexp.a01_vo;

public class Country {
 	private String name;
 	private String capital;
 	private int population;
	public Country() {
		// TODO Auto-generated constructor stub
	}
	public Country(String name, String capital, int population) {
		this.name = name;
		this.capital = capital;
		this.population = population;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCapital() {
		return capital;
	}
	public void setCapital(String capital) {
		this.capital = capital;
	}
	public int getPopulation() {
		return population;
	}
	public void setPopulation(int population) {
		this.population = population;
	}
 	
}
