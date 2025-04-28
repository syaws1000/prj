package javaexp.a07_loop;

public class A02_global_local_var {

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 지역변수와 전역변수 개념
		1. 지역변수
			지역변수란 메서드(객체안에함수), 반복문 내부에서 선언된 변수로, 해당 블록 안에서만
			사용 가능하면 블록({},())을 벗어나면 사라짐
		2. 전역변수
			자바는 여러가지 상황에 따라 전역변수를 사용하고 있는데 클래스전체(객체)에 사용가능한 변수
			메서드바깥(객체안에 함수) 또는 반복문이나 조건문의 상단에 선언된 변수(상대적전역변수)로 
			활용된다.			
		 * */
		int sum = 0; // 전역변수 for 밖에 선언된 변수 - 이후 선언되는 조건문, 반복문에 영역을 미치고,
		// 해당 조건문, 반복문이 끝나도 활용할 수 있다.
		for(int cnt=1;cnt<=10;cnt++) { // ()에  선언된 변수도 지역변수
			// {} 중괄호 안에 선언된 변수도 지역변수 
			// 해당 블럭에서만 사용되는 변수
			int no = 0; // 지역변수
			System.out.print("지역변수(cnt):"+cnt+"\t");
			System.out.print("지역변수(no):"+no+"\t");
			System.out.println("전역변수(sum):"+sum); // for문 안에서도 사용가능
			//sum = sum+cnt;
			no += cnt; // 지역변수는 계속 누적을 처리하는 것을 할 수 없다.
			sum += cnt; // 전역변수는 상위에 메모리를 선언하고 계속 누적 가능하다.
			//  1 =  0 + 1
			//  3 =  1 + 2
			// ...
			//  55 = 45 + 10

		}
//		System.out.println("지역변수(cnt):"+cnt); //외부에서 사용불가 : 지역변수이기에
//		System.out.println("지역변수(no):"+no);  //외부에서 사용불가 : 지역변수
		System.out.println("전역변수(sum):"+sum);	// for문이 끝난 후에도 사용가능: 전역변수
		
		int sum1=0;
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt+"+");
			sum1 +=cnt;
		}
		System.out.println("="+sum1);
		// 1. for 20~50까지 누적데이터를 sum2에 할당하고 출력하세요..
		int sum2 = 0;
		for(int cnt=20;cnt<=50;cnt++) {
			System.out.print(cnt+(cnt==50?"":"+"));
			// cnt==50?"":"+"  cnt가 50일 때는 공백"", 그외 += 표현
			sum2 +=cnt;
		}
		System.out.println("="+sum2);
		
		
		
		
		
		
		
	}

}
