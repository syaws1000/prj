package javaexp.a07_loop;

public class A01_Start {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 반복문
		1. 프로그래밍에서 반복문은 자동적인 처리라는 관점과 로직 처리라는 두가지 중요한 부분을 담당하고 있다.
		2. 자바에서도 여러가지 반복문형식으로 처리하고 있다.
		  1) for(초기값;반복조건;증감연산자){
		  		반복한 내용
		  	 }	
		  	 변수를 이용하여 반복 처리하는 형태를 말한다.
		  	 초기값은 한번만 수행되고,
		  	 반복조건은 특정한 비교연산식, 논리연산식으로 반복한 내용에 들어갈 조건을 설정하는 것이다.
		  	 증감연산자는 반복 내용을 수행후, 변수를 증가시키는 것을 말한다.
		  	 ex)
		  	 for(int cnt=1;cnt<=10;cnt++){
		  	 	System.out.println("카운트:"+cnt);
		  	 }
		  	 초기값 1 : int cnt=1;
		  	 반복 조건 : cnt <=10;
		  	 출력할 내용 : System.out.println("카운트:"+cnt);
		  	 증감 연산자 수행 :cnt++
		  	 
		  2) 	 
		 */
		for(int no=1;no<=10;no++){
			System.out.println("카운트:"+no);
			
		}
		// 지역변수는 해당 블럭 안에서만 영향을 미치기에 다른 블럭에서 재선언하여도 무방하다. 
		// 초기값 10, 한계치 15미만 섫정..
		for(int no=10;no<=15;no++) {
			System.out.println("카운트:"+no);
		}
		// 1. for문을 이용해서 초기값 20 ~ 35까지 출력 처리
		for(int no=20;no<=35;no++) {
			System.out.print(no+", ");
		}
		System.out.println();
		// 2. for문을 이용해서 초기값 100 ~ 200까지 출력 처리
		for(int no=100;no<=200;no++) {
			System.out.print(no+"\t");
		}
		System.out.println();
		// no+=2  :  no+=증가단위 변경...
		for(int no=1;no<=20;no+=2) {
			System.out.print(no+",");
		}
		System.out.println();
		for(int no=0;no<=100;no+=5) {
			System.out.print(no+",");
		}
		System.out.println();
		// 감소처리시에는 시작 범위를 크게하고, 해당 초기데이터보다 작은 범위로 부호를
		// 변경해서 처리한다.
		// int no = 100; 100부터 시작
		// no>=90 : 90보다 클때 : 90보다 클 때까지 반복한다.
		// no-- : no를 감소처리..
		for(int no=100;no>=90;no--) {
			System.out.println(no);
		}
		System.out.println();	
		// ex) no를 200부터 시작 해서  180까지 감소된 것을 출력하세요..
		for(int no=200;no>=180;no--) {
			System.out.print(no+",");
		}
		System.out.println();
		// 감소를 3개 단위로 처리할 때.
		for(int no=20;no>=0;no-=3) {
			System.out.print(no+",");
		}
		System.out.println();
		// ex) 300부터 250까지 5씩 감소해서 출력하세요..
		for(int no=300;no>=250;no-=5) {
			System.out.print(no+",");
		}
		System.out.println();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
