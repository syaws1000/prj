package web.com.springweb.a05_ajax.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class City {
	// cityName country
	// cityId cityName country population area foundedDate
	private int cityId;
	private String cityName;
	private String country;
	private int population;
	private double area;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date foundedDate;
	
	
	public City() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getCityId() {
		return cityId;
	}


	public void setCityId(int cityId) {
		this.cityId = cityId;
	}


	public String getCityName() {
		return cityName;
	}


	public void setCityName(String cityName) {
		this.cityName = cityName;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public int getPopulation() {
		return population;
	}


	public void setPopulation(int population) {
		this.population = population;
	}


	public double getArea() {
		return area;
	}


	public void setArea(double area) {
		this.area = area;
	}


	public Date getFoundedDate() {
		return foundedDate;
	}


	public void setFoundedDate(Date foundedDate) {
		this.foundedDate = foundedDate;
	}


}
