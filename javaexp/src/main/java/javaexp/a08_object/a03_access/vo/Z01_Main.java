package javaexp.a08_object.a03_access.vo;

public class Z01_Main {

	public static void main(String[] args) {
		// 선언
		// 선언 부터 확인
		Pirate p01;
		p01 = new Pirate();
		System.out.println("속성접근:"+p01.treasure);
		// public으로 설정되어 있는 속성 treasure는 같은 패키지 접근 가능
	}

}
