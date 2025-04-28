package javaexp.a08_object.a01_classOb;

public class A08_Object_Basic {

	public static void main(String[] args) {
		Bus b1 = new Bus("7900","서울~수원",25);
		b1.showStart();
	}
}
// Bus 필드로 버스번호, 구간, 탑승자수를 필드 선언, 생성자를 통해서 초기화하고,
//     showStart() 위 내용을 출력...
class Bus{
	String bsNo;
	String target;
	int passCnt;
	Bus(String bsNo, String target, int passCnt) {
		this.bsNo = bsNo;
		this.target = target;
		this.passCnt = passCnt;
	}	
	void showStart() {
		System.out.println("버스번호:"+bsNo);
		System.out.println("구간:"+target);
		System.out.println("탑승자수:"+passCnt);
	}
}
/*
# 단계별 연습 과제
1. 함수
	1) 매개변수
		call(int no){
			System.out.println("입력된 번호:"+no);
		}
		call(25);==> 매개변수에 입력하는 데이터에 따라서 해당 함수 내용 수행...
		call(35);
		call("35"); X
		call(25.7); X
		int no = 25;
		int no = 35;
		int no = "35";
		int no = 25.7;
		call(25);==> 매개변수에 입력하는 데이터에 따라서 해당 함수 내용 수행...
		call(35);		
		buy(String pname, int price){
			System.out.println("구매한 물건:"+pname);
			System.out.println("구매한 물건 가격:"+price);
		}
		buy("사과", 3000);==> 매개변수가 선언한 데이터 유형과 순서에 맞게 데이터를 전달 및 처리..
		buy("바나나", 5000);
	2) 리턴값처리 : 메서드는 리턴 유형을 선언하고 그 유형에 맞게 데이터를 리턴하여야 한다.
		void : 리턴값을 처리하지 않을 때, 선언하는 부분..
		void call1(){
			
		}
		리턴유형 call(){   ==>  리턴유형 변수 = 리턴데이터;
			리턴데이터;			 int no = 25;
		}
		
		int call2(){
			return 25;
		}
		
		int call3(){
			int no = 50;
			return no;
		}
		
		String call4(){
			String name="홍길동";
			return name;
		}
		
		main()
		System.out.println("이름:"+call1()); -- 리턴유형이 없을 특정 변수가 출력을 하지 못한다.
		System.out.println("번호:"+call2());
		
		String str1 = call3();   ==> String str1 = 50; (x)
		리턴되는 데이터에 맞게 변수를 선정하여야 한다.
		int no = call3();  ==> int no = 50;
		
		
		
	
	3) 매개변수 + 리턴값처리
	4) 매개변수 + 프로세스 + 리턴값 처리..
		int plus(int no1, int no2){
			System.out.println(no1 + " + " + no2 );
			int sum = no1 + no2;
			return sum;
		}
		
		main()
		System.out.println("결과값:"+plus(25,5)); ==> 25 + 5 
													결과값:30
		
		
	
	
2. 클래스형 객체
	1) 객체 생성
	2) 필드 활용
	3) 생성자 + 필드 활용
	4) 필드 + 생성자 + 메서드 활용
# 필드 + 생성자 + 메서드 활용 단계별 연습
1. 필드 + 생성자를 통한 초기화 및 여러가지 출력형태에 따른 메서드 처리
2. 필드 + 생성자 + 메서드의 매개변수 처리	
3. 필드 + 생성자 + 메서드의 리턴값 처리

	
*/
