package javaexp.a01_begin;

public class A08_BasicDataPrint {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바의 데이터 유형(대분류)
		1. 숫자형
			정수형 : 소숫점이 없는 데이터 ex) 25
			실수형 : 소숫점이 있는 데이터 ex) 3.14
		2. 문자열
			""사이에 할당하는 데이터
			ex) 주의) "25" ==> 문자열, 25 ==> 숫자, "안녕" ==> 문자열
		3. 위 데이터와 System.out.println() 메서드 처리 관계
			1) 숫자형끼리는 시작하는 경우 연산을 처리를 해준다.
				ex) 25 + 30 ==> 55
			2) 문자열의 경우은 문자열을 +를 활용해서 문자를 이어준다.
				ex) "홍길동" + "김길동"  ==> "홍길동김길동"
			3) 숫자 + 문자열 : 연산 후 문자열 출력
				ex) 25 + 30 + "안녕"  ==> "55안녕"
			4) 문자열 + 숫자  : 문자열과 숫자는 연산되지 않고 바로 출력된다.
				ex) "안녕" + 25 + 30  ==> "안녕2530"
			5) 문자열 + (숫자)  : 문자열과 숫자는 소괄호를 하는 경우 연산되어 출력된다.
				ex) "안녕" + (25 + 30)  ==> "안녕55"
				
		 * */
		System.out.println("# 문자열과 숫자 데이터 출력 처리 #");
		System.out.println(25+30);
		System.out.println("홍길동" + "김길동");
		System.out.println(25 + 30 + "안녕");
		System.out.println("안녕" + 25 + 30);
		System.out.println("안녕" + (25 + 30));
		// ex1) 이름과 나이 직업(문자열, 숫자, 문자열)을  데이터로 선언하여 아래와 같이 
		//    System.out.println()으로 아래와 같이 +를 이용해서 출력해보세요.
		//    홍길동님은 25살이고, 직업은 개발자입니다.
		System.out.println("홍길동"+"님은 "+25+"살이고," +" 직업은 "+"개발자"+"입니다." );
		// ex2) 두숫자(정수)를 이용하여 아래과 같이 결과가 출력되게 처리해보세요.
		//      덧셈 결과 : 30
		//      뺄셈 결과 : 10    - 활용
		//      곱셈 결과 : 200   * 활용
		//      나눗셈 결과 : 2  / 활용
		System.out.println("덧셈 결과 :"+(20+10));
		System.out.println("뺄셈 결과 :"+(20-10));
		System.out.println("곱셈 결과 :"+(20*10));
		System.out.println("나눗셈 결과 :"+(20/10));
		
	}

}
