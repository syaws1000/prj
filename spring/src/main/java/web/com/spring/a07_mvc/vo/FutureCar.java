package web.com.spring.a07_mvc.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FutureCar {
	// carId  carName carFeature fuelType releaseDate topSpeed
	private int carId;
	private String carName;
	private String carFeature;
	private String fuelType;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date releaseDate;
	private int topSpeed;
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public String getCarFeature() {
		return carFeature;
	}
	public void setCarFeature(String carFeature) {
		this.carFeature = carFeature;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public int getTopSpeed() {
		return topSpeed;
	}
	public void setTopSpeed(int topSpeed) {
		this.topSpeed = topSpeed;
	}
	
}
