package a01_diexp.vo4;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import a01_diexp.vo.Food;

@Component
public class Pet {
	private String name;
	@Autowired
	private PetOwner petOwner;
	// 선언은 가능하나, 해당 컴포넌트에는 Food 객체가 없다..
	// Pet 객체 안에 컨테이너에 Food객체가 없기에 발생함
	@Autowired(required = false)  //객체가 없더라도 일단 에러는 방지 
	private Food food;
	
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

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}
	
	
}
