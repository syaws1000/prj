package javaexp.a07_loop;

public class A12_doWhile {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# do while 구문
		1. while 구문은 반복조건이 있을 때만, 반복 처리하지만,
			do while 구문은 반복조건을 마지막에 check해서,
			일단, 한번은 해당 반복 블럭 구문을 수행할 때, 
			사용된다.
		2. 기본 형식
			do{
				계속 수행할 반복 내용..
			}while(조건);
		 * */
		int cnt = 11;
		do {
			System.out.println("카운트:"+(cnt++));
		}while(cnt<=10);
		System.out.println("반복문 종료");
		/*
		ex) int count로  100을 설정 후, do while로 90까지 출력되게 하세요..
		 * */
		int count = 80;
		do {
			System.out.println("카운트 다운:"+(count--));
			// 아래 반복 조건이 맞지 않더라도 한번은 처리해준다.!!
		}while(count>=90);
		
		
		
	}

}
