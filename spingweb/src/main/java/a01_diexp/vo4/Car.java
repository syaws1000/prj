package a01_diexp.vo4;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Car {
	private String model;
	
	
	// 같은 컨테이너에 객체가 있으면 자동으로 여기에 객체가 할당하게 처리..
	// Autowired
	private Engine engine;
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Car(String model) {
		super();
		this.model = model;
	}
	public Car(String model, Engine engine) {
		super();
		this.model = model;
		this.engine = engine;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Engine getEngine() {
		return engine;
	}
	public void setEngine(Engine engine) {
		this.engine = engine;
	}
	

}
