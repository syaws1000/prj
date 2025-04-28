package javaexp.a08_object.a01_classOb;

public class A11_ObjectMethodRet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account acc1 = new Account(10000);
		int tot = acc1.getBalance();
		System.out.println("현재 잔액1:"+tot);		
		acc1.saving(5000);
		acc1.saving(2000);
		acc1.saving(12000);
		tot = acc1.getBalance();
		System.out.println("현재 잔액2:"+tot);
		Car2 c1 = new Car2(10);
		c1.speedUp(10);
		c1.speedUp(20);
		c1.speedUp(30);
		System.out.println("현재 속도:"+c1.getCurSpeed());
		
		
	}
}
/*
1. 클래스 선언..  class 클래스명{}
2. 클래스 밑에 필드(속성)
3. 생성자 초기..
4. 메서드 입력 할당 처리.
5. 메서드 리턴/출력..
*/
class Car2{
	// 속도(speed)
	int speed;
	// 생성자로 초기속도 할당
	public Car2(int speed) {
		this.speed = speed;
		System.out.println("속도가 "+speed+"인 자동차 객체 생성..");
	}
	// speedUp(매개변수로 증가할속도) : 누적해서 증가
	void speedUp(int speed) {
		this.speed += speed;
		System.out.println("속도가 "+speed+"증가 되었습니다.");
	}
	// getCurSpeed() : 현재 속도 리턴..
	int getCurSpeed() {
		return speed;
	}
}
class Account{ // 계좌
	int balance; // 잔액
	Account(int balance){
		this.balance = balance;
		System.out.println("계좌 생성!! 초기 입금액 :"+balance);
	}
	void saving(int money) {
		System.out.println("예금! 입력한 금액"+money);
		this.balance += money;
	}
	// 필드 즉, 클래스 바로 밑에 선언된 객체의 전역변수(필드)를 호출하는 곳에 전달..
	int getBalance() {
		return balance; // 호출한 곳에 리턴할 현재 잔액..
	}
}

/*
# 객체에서 처리결과를 호출하는 곳으로 리턴하는 메서드
1. 메서드는 여러가지 기능적인 처리를 하는데, 데이터를 입력하거나, 입력된 데이터를 처리하고,
	그 데이터를 조건/반복문에 의해 처리도 하지만 리턴이라는 해당 메서드를 호출하는 곳에 
	데이터를 전달 하기도 한다.
2. 클래스형 객체의 메서드 리턴값형식
	class 클래스명{
		필드
		클래스명(생성자매개변수){}
		
		리턴유형 메서드명(메서드 매개변수){
			프로세스처리
			return 리턴값;
		}
	}
	main()
	클래스명 참조변수 = new 클래스명(전달할데이터);
	리턴유형과 같은 데이터 유형 변수명 = 참조변수.메서드명(전달할데이터);
*/







