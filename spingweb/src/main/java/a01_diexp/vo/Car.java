package a01_diexp.vo;

public class Car {
	private String model;
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
