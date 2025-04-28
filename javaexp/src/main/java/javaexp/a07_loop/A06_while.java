package javaexp.a07_loop;

public class A06_while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# while 구문
		1. 특정한 조건에 따라 반복 여부를 결정하여 처리하는 구문으로 for문 보다
			간단한 조건에 의해 반복수행을 처리하는 것을 말한다.
		2. 일반적으로 데이터의 변수를 통해서 반복step을 결정하기보다 입력값에 의해서
			반복처리 여부를 결정할 때, 주로 사용된다.
		3. 기본형식
			while(반복조건){
				반복조건이 true일 때, 처리할 내용
			}
		4. 단계별 예제
			1) 기본 코드 연습
				while(cnt<=10){  // 10이하 데이터만 반복처리
					cnt++; // cnt가 증가처리
				}
			2) 입력값에 의한 반복여부 결정
				while(!inputStr.equals("Y")){  입력한 문자열이 Y가 아닐 때.
					inputStr = sc.nextLine();  // 문자열을 입력받음..
					
				}
		 * */
		System.out.println("#while문을 통한 카운트업#");
		int cnt = 1;
		while(cnt<=10) {  // 10이하까지만 출력되게 처리..
			System.out.println("카운트:"+(cnt++));
		}
		// ex) count변수에 10을 설정하고  20까지 출력되는 while문을 만드세요..
		int count = 10;
		while(count<=20) {
			System.out.println("카운트(10~20):"+(count++));
		}
		
		
	}

}
