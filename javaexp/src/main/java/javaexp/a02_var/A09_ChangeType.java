package javaexp.a02_var;

public class A09_ChangeType {

	
	public static void main(String[] args) {
		int no01 = 25;
		String noStr = ""+no01;
		System.out.println(noStr+25);
		/*
		# 숫자형 데이터와 문자열 데이터의 차이
		1. "데이터1" : "" 사이에 들어간 데이터는 문자열 데이터이다.
		2. 25,3.14 : "",'' 없이 바로 아라비아 숫자를 사용하는 데이터는 숫자형 데이터
		
		 * */
		
		System.out.println("문자열 데이터:"+"안녕하세요!" + "25"); // 출력하는 명령어..
		// ctrl+a : 전체 선택
		// ctrl+c : 복사
		// ctrl+v : 붙여넣기
		//  + : 문자열데이터를 연결할 때, 사용된다.
		// ctrl + alt + 화살표아래 : 줄복사
		// ctrl + z : 명령 취소
		System.out.println("문자형 데이터");
		System.out.println("25"+"30");
		System.out.println("숫자형 데이터");
		System.out.println(25 + 30);
		// ctrl + f11 : 실행 단축키
		
		// ex) 문자열 데이터 "홍" , "길동",  "25"  를 + 로 연결해서 출력하고,
		//     숫자형 데이터 75, 3.14 를  +로 연결해서 출력해보세요..
		System.out.println("홍"+"길동"+"25");
		System.out.println(75 + 3.14);
		
		
		
		
		
		
		
		
		
		
		
		
		

		/*
		# 형변환 처리
		1. 자바는 데이터 유형에 따라 형변환을 처리하는 경우가 많다.
			1) 보통 일반적으로 메모리 크기는 다음과 같다.
				int/char < double < String/Object
		2. 유형자체에 대한 변환
			1) 숫자형 ==> 문자열
				정수형 ==> 문자열
				실수형 ==> 문자열
			2) 문자열 ==> 숫자형
			
		3. 큰데이터유형 ==> 작은 데이터 유형 : casting 필요
			1) 실수형 ==> 정수형
			2) 상속에서 상위객체 ==> 하위객체 할당(추후진행)
			ex) 큰물겁에 물을 가득담고, 작은물겁에 담으면?
			 double num03 = 3.14;
			 int num04 = num03;  -- 에러발생..
			 int num05 = (int)num03;  -- 반드시 casting하여야 한다.
			 							해당 정수형 데이터만 가지고, 나머지를 버리겠다는 명시화된 코드를
			 							하여야 에러가 발생하지 않는다.
			  							.14는 사라지고, num05에 3만 할당이 된다.
			 
		
		4. 작은데이터유형 ==> 큰 데이터 유형 : promote
			1) 정수형 ==> 실수형
			2) 상속에서 하위객체 ==> 상위객체 할당(추후진행) 
			ex) 작은물컵 물을 담고, 큰물겁에 물을 담으로면 ??
				int num01 = 25;
				double num02 = num01;  25.0
			
		
		 * */
		// 정수형 데이터를 문자열로 변환
		int iNum = 25;
		// 1. 문자형 변경방법1
		String strNum = ""+iNum;  // 간단하게 문자열 데이터로 변경.
		// 2. 문자형 변경방법2
		String strNum2 = Integer.toString(iNum);
		//   Integer : wrapper class 클래스 - 객체이후 진도
		//   .toString() : 객체의 하위 기능메서드
		System.out.println(iNum + 5); // 숫자 + 숫자 : 30
		System.out.println(strNum + 5); // 문자열 + 숫자 : 255  연결처리 : 앞에 문자열이기에
		System.out.println(strNum2 + 5); // 문자열 + 숫자 : 255  연결처리 : 앞에 문자열이기에
		
		// ex) int intNum 에 데이터 50을 할당하고,  문자열로 변경하여 변수 String strNum3에 할당하고
		//     intNum에 + 10과   strNum3에 + 10의 차이를 출력해서 확인하세요..
		int intNum = 50;
		String strNum3 = ""+intNum; 
		// 숫자형인 inNum을 문자열로 변환처리.. ""+숫자형데이터 ==>문자열데이터
		System.out.println(intNum + 10);  // 숫자형은 연산
		System.out.println(strNum3 + 10);  // 문자열형은 이어주기 처리
		
		
		
		
		
	}

}
