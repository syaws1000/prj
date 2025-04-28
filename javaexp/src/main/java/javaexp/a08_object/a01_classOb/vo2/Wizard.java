package javaexp.a08_object.a01_classOb.vo2;

public class Wizard {
	private String name;
	private int mana;
	// 생성자
	public Wizard() {
		// TODO Auto-generated constructor stub
	}
	public Wizard(String name, int mana) {
		this.name = name;
		this.mana = mana;
	}
	// set/get메서드 생성..
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMana() {
		return mana;
	}
	public void setMana(int mana) {
		this.mana = mana;
	}
	
	

	
}
