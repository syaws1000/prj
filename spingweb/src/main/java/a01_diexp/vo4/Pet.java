package a01_diexp.vo4;

import org.springframework.stereotype.Component;

@Component
public class Pet {
	private String name;
	private PetOwner petOwner;
	public Pet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Pet(String name) {
		super();
		this.name = name;
	}

	public Pet(String name, PetOwner petOwner) {
		super();
		this.name = name;
		this.petOwner = petOwner;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public PetOwner getPetOwner() {
		return petOwner;
	}

	public void setPetOwner(PetOwner petOwner) {
		this.petOwner = petOwner;
	}
	
	
}
