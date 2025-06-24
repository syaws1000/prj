package web.com.springweb.a05_ajax.dto;

import java.util.Date;

public class City {
	private int cityId;
	private String cityName;
	private String country;
	private int poplulation;
	private double area;
	private Date foundedDate;
	
	
	public City() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public City(int cityId, String cityName, String country, int poplulation, double area, Date foundedDate) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.country = country;
		this.poplulation = poplulation;
		this.area = area;
		this.foundedDate = foundedDate;
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
	public int getPoplulation() {
		return poplulation;
	}
	public void setPoplulation(int poplulation) {
		this.poplulation = poplulation;
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
