package javaexp.a07_loop;

public class A01_1Start {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// int cnt = 1; 초기값 설정..
		// cnt<=10  반복의 조건.. 10이하
		// cnt++  증감단위... cnt+=3
		for(int cnt=5;cnt<=20;cnt+=3) {
			System.out.println("카운트:"+cnt);
		}
		// 
		for(int cnt=100;cnt>=20;cnt-=2) {
			System.out.println("카운트:"+cnt);
		}	
		// cnt 초기 데이터 10부터 시작해서,  반복은 50이하,  증가단위로 5씩 증가..
		for(int cnt=10;cnt<=50;cnt+=5) {
			System.out.print(cnt+",");
		}
		System.out.println();
		
	}

}
