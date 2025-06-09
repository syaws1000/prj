package a01_diexp.vo;

import org.springframework.stereotype.Component;

@Component
public class Food {
	private String fname;
	public Food() {
	}

	public Food(String fname) {
		this.fname = fname;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}
	
}
