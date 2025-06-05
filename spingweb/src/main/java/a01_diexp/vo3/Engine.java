package a01_diexp.vo3;

import org.springframework.stereotype.Component;

@Component   // engine (default로 호출되는 이름) 클래스명에서 첫자를 소문자..
public class Engine {
	private String engineType;

	public Engine() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Engine(String engineType) {
		super();
		this.engineType = engineType;
	}

	public String getEngineType() {
		return engineType;
	}

	public void setEngineType(String engineType) {
		this.engineType = engineType;
	}
	
}
