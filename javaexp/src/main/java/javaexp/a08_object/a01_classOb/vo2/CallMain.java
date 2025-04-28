package javaexp.a08_object.a01_classOb.vo2;

public class CallMain {

	public static void main(String[] args) {
		// 하나의 정의된 class 파일을 통해서 객체가 main()에서 두개를 생성..
		PetRobot r1 = new PetRobot(); // 매개변수가 없는 생성자로 객체 생성
		r1.setName("마징거");
		System.out.println(r1.getName());
		
		PetRobot r2 = new PetRobot("철인24호",100);
		System.out.println(r2.getName());
		System.out.println(r2.getBettryLevel());
		
		// Wizard 객체 2개를 만들어 위와 같이 처리해보세요..
		Wizard w1 = new Wizard();
		w1.setName("헤리포터");
		System.out.println(w1.getName());
		Wizard w2 = new Wizard("간달프",200);
		System.out.println(w2.getName());
		System.out.println(w2.getMana());
		
		
		
		
	}

}
