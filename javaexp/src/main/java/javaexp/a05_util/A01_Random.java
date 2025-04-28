package javaexp.a05_util;

public class A01_Random {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 임의의(random) 수 만들기
		1. 대부분의 프로그램에서 임의의 수를 만들어 프로그램을 처리하는 경우가
			많다. 예를들어 주사위 굴리기, 0~100사이에 임의의 점수나오게 하기,
			가위/바위/보 중에 임의로 나오게 하기, 짝/홀 중에 임의로 나오게 하기 등.
		2. 이런 임의의 수를 자바에서는 다음의 형식과 단계에 의해서 만들고 있다.
		3. 기본 형식
			1) 0.0 <= Math.random() < 1.0
				Math.random()은 실수 0.0보다 같거나 크고, 실수 1.0보다 작은 범위에서 임의의 
				수가 나오게 한다.
			2) 1~10까지 임의의 정수를 나오게 하려면	
				경우의 수 : 10
			
				0.0 <= Math.random() < 1.0
				0.0*10 <= Math.random()*10 < 1.0*10
				0.0 <= Math.random()*10 < 10.0
				0 <= (int)(Math.random()*10) < 10
					0,1,2,.... 9 ==> 1,....  10
				0+1 <= (int)(Math.random()*10+1) < 10+1	
				1 <= (int)(Math.random()*10+1) < 11
				경우의 수와, 시작수를 가져오면 정수로 임의의 수를 도출할 수 있다.
				(int)(Math.random()*경우의수 + 시작수)
			3) 검증1) 주사위 돌리기...
				경우의 수 : 6가지
				시작 수 : 1
				1,2,3,4,5,6
				1 <=(int)(Math.random()*6 + 1)< 7	
		 * */
		double ran = Math.random();
		System.out.println(ran);
		System.out.println(ran*10);
		System.out.println((int)(ran*10));
		System.out.println((int)(ran*10)+1);
		System.out.println("주사위 돌리기:");
		System.out.println((int)(ran*6+1));
		System.out.println("1,2만 임의로 나오는 수");
		System.out.println((int)(ran*2+1));
		// (int)(Math.random()*경우의수 + 시작수)
		// ex1) 가위바위보를 하기 위해서  0, 1, 2 까지 임의로 나오게 하였다.. 위 임의의 수를 처리하세요.
		System.out.println("가위 바위 보(0,1,2) 경우의 수 3, 시작수 0");
		System.out.println((int)(ran*3));
		// ex2) 홀짝을 하기 위해서 0, 1로 임의로 나오게 하였다 임의의 수를 처리하세요..
		//------------------------
		System.out.println("홀짝 0, 1");
		System.out.println((int)(ran*2));
		System.out.println((int)(ran*2) == 0?"짝":"홀");
		// ex3) 모두의 마블 주사위(2~12)임의의 수를 나오게 하세요..
		//     경우의 수 : 11가지,  시작 2
		System.out.println("모두의 마블 주사위 2개 던질 때");
		System.out.println((int)(ran*11 + 2));
		
		String games[] = {"가위", "바위", "보"};
		System.out.println(games[0]);
		System.out.println(games[1]);
		System.out.println(games[2]);
		// 임의의 가위, 바위, 보의 index 0,1,2
		int rIdx = (int)(ran*3); // 경우의 수는 3이고 시작수 0
		System.out.println("임의로 나온 가위 바위 보:"+games[rIdx]);
		String game2[] = {"홀","짝"};
		int rIdx2 = (int)(ran*2); // 0,1
		System.out.println("임의 홀/짝 :"+ game2[ rIdx2 ]);
		
		
		
	}

}
