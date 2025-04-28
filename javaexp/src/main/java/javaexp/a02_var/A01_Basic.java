package javaexp.a02_var;

public class A01_Basic {

	public static void main(String[] args) {
		
		System.out.println("안녕하세요");
		
		/*
		# 자바의 변수의 선언과 할당
		1. 
		 * */
		
		
		// TODO Auto-generated method stub
/*
# 변수의 선언
1. 프로그래밍에서 데이터를 할당하기 위해서는 변수가 필요로 한다.
	어떤 정보를 담을 수 있는 용기를 지정하고, 그 용기에 이름을 
	붙이는 것을 의미한다.
2. 기본 형식
	1) 선언
		자바에서는 version에 따라 차이가 나지만, 기본적으로
		데이터 유형과 변수명으로 데이터를 할당할 변수를 선언한다.
		데이터 유형/변수명
		ex) int num01;
		int(정수형)으로 num01이라는 이름의 변수 선언
	2) 할당
		선언된 변수에 해당 유형에 맞게 대입연산자(=)를 통해 데이터를
		할당하는 것을 말한다.
		ex) num01 = 25;
	3) 선언과 할당
		선언과 동시에 할당하는 것을 말한다.
		int num02 = 30;
		데이터유형 변수명 = 데이터;
 * */
		int num01; // 정수형 num01로 변수 선언
		double num02; // 실수형 num02로 변수 선언
		num01 = 25; // num01변수에 25 데이터 할당
		num02 = 3.14; // num02변수에 3.14 데이터 할당.
		System.out.println("num01:"+num01); // num01 변수 출력
		System.out.println("num02:"+num02); // num02 변수 출력
		
		int num03 = 40; // 정수형데이터 40을 정수형 변수 num03에 할당.
		System.out.println("num03:"+num03); // num03 변수 출력
		// ex1) 가격(price)를 정수 선언, 몸무게(weight)를 실수형 선언 후, 할당하고 출력하세요.
		// ex2) 원주율(pi)를 실수형으로 선언 및 할당(3.14)를 하고 출력하세요
		int price; //선언
		price = 3000; // 데이터 할당.
		double weight; // 선언
		weight = 72.5; // 데이터 할당.
		System.out.println("가격:"+price);
		System.out.println("몸무게:"+weight);
		double pi = 3.14;  // 선언과 할당
		System.out.println("원주율(pi):"+pi);
/*
1. **치킨 파티 초대장**
   - 변수 `guestCount`를 선언하고, 초대할 친구의 수를 할당하세요.
   - 초대장을 출력할 때 "치킨 파티에는 [guestCount]명을 초대합니다!"라고 출력해보세요.
2. **반지름 계산기**
   - 원의 반지름을 나타내는 변수 `radius`를 선언하고 값을 할당하세요.
3. **성적표 등급**
   - 학생의 성적을 나타내는 변수 `score`를 선언하고 값을 할당하세요.
 */
		int guestCount;
		// int 정수형 : 어떤 유형으로 데이터를 할당할 것인가를 정하는 내용
		// guestCount  변수의 이름 : 해당 이름으로 변수의 이름을 정하는 것
		// 비유로 하면 어떤 박스에 크기/종류를 지정하고(int), 그 박스의 이름을 guestCount라고 스티커를
		// 붙이는 것을 말한다.
		guestCount = 5;
		// 해당 이름으로 된 변수에 데이터 5를 담는 것을 말한다.
		// 박스를 이름으로 호출하여, 그 박스안에 물건을 담듯이 데이터를 담는 것을 말한다.
		System.out.println("치킨 파티에는 "+guestCount+"명을 초대합니다!");
		// System.out.println("출력할내용");  화면에 출력할 내용을 지정할 때, 사용되는 코드..
		// "치킨 파티에는 "+guestCount+"명을 초대합니다!"
		// "문자열"+변수+"문자열"   위 guestCount 변수를 문자열 사이에 삽입하여 출력 할려면
		// +변수+ 형태로 추가하여야 한다..
		
		
		double radius = 30.0;
		System.out.println("원의 반지름은 "+radius);
		double area = radius*radius*3.14; // 면적 공식 = 반지름*반지름*3.14
		System.out.println("원의 면적:"+area);
		int score = 80;
		System.out.println("학생의 성적은 "+score+"점 입니다.");
		
		
		
		
		
	}

}
