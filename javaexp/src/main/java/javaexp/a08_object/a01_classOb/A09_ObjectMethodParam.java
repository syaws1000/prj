package javaexp.a08_object.a01_classOb;

public class A09_ObjectMethodParam {

	public static void main(String[] args) {
		ObBus bus1 = new ObBus("101","서울~경기");
		bus1.boardPass(); bus1.addPass(3); bus1.addPass(2);bus1.boardPass();
		ObCar car1 = new ObCar("그랜저");
		car1.drivingCar();car1.speedUp(10);car1.speedUp(50);car1.drivingCar();
	}
}
// 속성 carModel(모델명) speed(현재속성), 생성자(모델명 초기 할당), 
//    drivingCar() 현재 @@@모델차가 @@km/h 속도로 운행합니다.    
//    speedUp()매개변수로 증가하는 속도처리   @@차  속도를 @@km/h 증가했습니다.
class ObCar{
	String carModel;
	int speed;
	public ObCar(String carModel) {
		this.carModel = carModel;
	}
	void drivingCar() {
		System.out.println("현재 "+carModel+"모델 자동차가 "+speed
				+"km/h 속도로 운행합니다.");
	}
	void speedUp(int speed) {
		this.speed += speed;
		System.out.println(carModel+"자동차  속도를 "+speed+"km/h 증가했습니다.");
	}
	
}
class ObBus{
	String bsNo;
	String target;
	int passCnt; // 숫자형을 default로 0이 설정
	public ObBus(String bsNo, String target) {
		this.bsNo = bsNo;
		this.target = target;
	}
	void boardPass() {
		System.out.println("# 운행중인 버스 현재 정보 #");
		System.out.println("1. 버스 번호:"+bsNo);
		System.out.println("2. 버스 행선지:"+target);
		System.out.println("3. 현재 탑승인원:"+passCnt+"명");
	}
	void addPass(int passCnt) {
		this.passCnt+=passCnt; // 현재 추가적으로 탑승인원을 필드에 누적 처리
		System.out.println(bsNo+"번 버스에 정거장에서 "+passCnt+"명 탑승했습니다.");
	}
	
	
	
}
/*
# 객체의 생성자를 통한 초기화 처리 및 메서드의 매개변수로 처리
1) 승객 탑승 증가 처리
	1) 승객 수가 증가하는 상황을 시뮬레이션합니다. boardPassenger 메서드를 통해
		승객 수를 추가하고, 추가된 후의 승객 수를 확인하여 출력 하는 것을 말합니다.
	2) 단계별 설명
		- 객체 생성(ObBus)
		 	ObBus 객체를 생성하면서 버스 번호, 경로, 승객 수를 초기화합니다.
		 	 처음에 만들기에 번호와 경로만 설정하면 승객수는 숫자형이기에 자동으로 0으로 설정 
		 	 	가능..
		- 메서드 정의
			boardPass 메서드는 승객을 추가하는 기능을 합니다. 이 메서드는
				addPass라는 매개변수로 승객 수를 받습니다.
				승객 수가 추가된 후, 새로운 승객 수를 출력합니다.
		- 메서드 호출 및 결과 출력
			승객을 5명 추가하고, 업데이트된 승객 수 출력합니다.
			이 후에 현재 탑승된 전체 승객 수를 출력합니다.
			

*/
