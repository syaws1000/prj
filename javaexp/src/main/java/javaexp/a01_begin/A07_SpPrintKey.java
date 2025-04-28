package javaexp.a01_begin;

public class A07_SpPrintKey {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 문자열내에 특수 코드로 문자열 데이터 처리
		1. \n : 문자열 내에 줄바꿈 처리할 때 사용된다.
			System.out.println("사과\n바나나\n딸기");
			사과
			바나나
			딸기  ==> 출력 처리
		2. \t : 문자열 내에 탭간격을 처리할 때 사용된다.
			System.out.println("홍길동\t김길동\t신길동");
			홍길동   김길동   신길동
			위 탭간격은 절대적으로 지정된 간격으로 공백을 처리한다.
		3. \" : 문자열 안에 다시 "를 출력할 때
			System.out.println("안녕하세요 \"홍길동!\" ");
			안녕하세요 "홍길동!" ==> 출력시 활용
		 * */
		System.out.println("사과\n바나나\n딸기");
		System.out.println("홍길동\t김길동\t신길동");
		System.out.println("안녕하세요 \"홍길동!\" ");
		/*
		ex1) 구매목록리스트를 \n을 활용하여 리스트하세요.
		ex2) 친구들의 전화번호를 아래와 같이 출력할 때, \t를 활용하여 리스트 해보세요
		홍길동   010-1234-5678
		김길동   010-2345-6789
		신길동   010-3456-7890
		 * */
		System.out.println("구매목록\n1. 사과\n2. 바나나\n3. 딸기");
		System.out.println("이름\t전화번호");
		System.out.println("홍길동\t010-1234-5678");
		System.out.println("김길동\t010-2345-6789");
		System.out.println("신길동\t010-3456-7890");
		
	}

}
