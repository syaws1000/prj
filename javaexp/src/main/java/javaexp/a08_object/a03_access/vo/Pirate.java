package javaexp.a08_object.a03_access.vo;

// public : 모두 접근
// import javaexp.a08_object.a03_access.vo.Pirate;
public class Pirate {
	//public Pirate(){} //: default 생성자
	public int treasure = 100; // 공개된 보물 상자
	public void showTreasure() {
		System.out.println("현재 보물:"+treasure);
	}

}
