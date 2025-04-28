package javaexp.a07_loop;

public class A03_for_if {

	public static void main(String[] args) {
		/*
		# 반복문과 조건처리
		1. for문을 통한 처리에 있어서 조건 처리는 중요한 알고리즘을 만들어 준다.
		2. 예를들어, 특정한 경우는 중단을 하거나 특정한 경우에 연산을 하는 등, 
		3. 반복을 통하여 분기를 처리하는 많을 경우를 수행 할 수 있기때문이다.
		4. 기본 형식
			for(;;){
				if(조건){
					반복문에서 특정조건일 때, 처리할 내용
				} 
			}
		 * */
		// 3, 6, 9 와 같이 3의 배수일 때는 짝!으로 표현하고, 그외는 숫자를 출력
		for(int cnt=1;cnt<=30;cnt++) {
			// cnt%3 1 2 0 1 2 0 1 2 0    3의 배수일때, 나머지연산자로 체크해서 짝을 출력
			if( cnt%3==0 ) {
				System.out.print("짝,");
			}else {						// 3의 배수가 아닐 때는 번호를 출력
				System.out.print(cnt+",");
			}
		}
		System.out.println();
		// ex) %2 0,1    1~10까지 출력하면서 홀/짝을 출력해보세요..
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt);
			if(cnt%2==0) {
				System.out.print("(짝),");
			}else{
				System.out.print("(홀),");
			}
		}
		
		

	}

}
