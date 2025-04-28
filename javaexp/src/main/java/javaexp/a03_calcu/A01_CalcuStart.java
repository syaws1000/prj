package javaexp.a03_calcu;

public class A01_CalcuStart {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		주석문 : 실행에 영향을 미치지 않는다.
		# 연산이란?
		1. 데이터를 처리하여 결과를 산출하는 것을 말한다.
		2. 연산자란 연산에 사용되는 표시나 기호들을 말한다.
			+, -, *, /, =, +=, ++ 등등
			산술연산자, 대입연산자, 증감연산자, 논리연산자
		3. 피연산자 : 연산 대상이 되는 데이터(리터럴-10,50, 변수-no1, str1)
			3 + 5 = 30
			3, 5 : 피연산자
			+, = : 연산자(산술연산자, 대입연산자)
		4. 연산식 : 연산자와 피연산자를 이용하여 연산의 과정을 기술하는 것을 말한다.
			3 + 5 = 30
			연산자 + 피연산자 혼합되어 있는 전체..
		 * */
		System.out.println("# 산술 연산자 #"); // 기본 출력문
		int num01 = 7; /// int(정수형 메모리를 위한 데이터유형), num01(변수명) = 7 (데이터7을 할당)
		// = : 대입연산자 : 7이라는 데이터를 num01에 할당 처리
		
		int num02 = 5;
		// 5라는 데이터를 정수형(int) num02라는 이름의 변수명에 할당 처리
		int tot = num01 + num02;
		// num01과 num02 데이터를  + 라는 연산자에 의해 합산을 하고,
		// 그 결과값을 대입연산자(=)를 통해서 tot이라는 정수형 데이터의 변수명에 할당 한다.
		System.out.println(num01 + " + "+ num02 + " = " + tot);
		// "문자열" + "문자열"  :  + 문자열과 문자열을 이어주는 처리..
		// 변수명 + "문자열" : 변수명과 문자열을 이어주는 처리
		// 위 변수명에 들어가는 데이터 7 + 5 = 12  형식으로 출력하기 위한 구문..
		System.out.println(num01+" + " + num02 + " = "+tot);
		System.out.println(num01+" + "+num02+" = "+tot);
		
		int tot3= num01 - num02;
		System.out.println(num01+" - "+num02+" = "+tot3);
		int tot5 = num01*num02;
		System.out.println(num01+" x "+num02+" = "+tot5);
		
		
		// ex) num03(5), num04(12)를 int형을 할당하여, 위와 같이 @@ + @@ = @@ 로 출력되게 하세요..
		//     tot02(위 변수 합산 처리)
		int num03 = 5;
		int num04 = 12;
		int tot02 = num03 + num04;
		System.out.println(num03 + " + "+ num04 +" = "+ tot02);
		System.out.println(num03+" + "+num04+" = "+tot02);
		//ex) tot4에  num03과 num04값을 빼서 처리후..  5 - 12 = -7  출력하세요
		int tot4 = num03 - num04;
		System.out.println(num03+" - "+num04+" = "+tot4);
		// ex) tot6  num03*num04    @@@ x @@@ = @@
		int tot6 = num03 * num04;
		System.out.println(num03+" x "+num04+" = "+tot6);
		double tot7 = num03 / (double)num04; // double 실수데이터 처리..
		System.out.println(num03+" ÷ "+num04+" = "+tot7);
		// % : 나머지 연산자  나눗셈 후, 나머지값을 정수로 할당하는 것을 말한다.
		int tot8 = num03%num04;
		System.out.println(num03+" % "+ num04 + " = "+ tot8);
		// ex) num05(20)  num06(7)  tot9로  num05와 num06의 나머지값을 
		//     @@@ % @@@ = @@@  로 출력하세요..
		int num05 = 20;
		int num06 = 7;
		int tot9 = num05 % num06;
		System.out.println(num05+" % "+ num06 + " = "+ tot9);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
