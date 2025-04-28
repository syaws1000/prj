package javaexp.a03_calcu;

public class A05_ComparisonOp {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		# 비교 연산자
		1. 기본적으로 변수/리터럴데이터를 비교할 때, boolean값으로 true/false 결과값을
			가져오는 연산자를 말한다.
			ps) int no = 1; 에서 no는 변수, 할당하는 1은 리터럴데이터
		2. 프로그래밍에서 중요한 알고리즘을 처리하는 기초라고 할 수 있다. 이후에 논리연산자와 함께
			조건문/반복문에서 사용된다.
		3. 종류
			1) 비교연산자는 2개 이상의 데이터를 비교하는 것이 일반적이고 이항연산자로 분류되고 있다.
			2) 데이터1 == 데이터2 : 두개의 데이터가 동일할 때, true 
			   데이터1 != 데이터2 : 두개의 데이터가 다를 때, true
			   데이터1 >= 데이터2 : 데이터1이 데이터2보다 크거나 같을 때, true
			   데이터1 <= 데이터2 : 데이터1이 데이터2보다 작거나 같을 때, true
			   데이터1 > 데이터2 : 데이터1이 데이터2보다 클 때, true
			   데이터1 < 데이터2 : 데이터1이 데이터2보다 작을 때, true 
		*/
		int no1 = 5; int no2 = 7;  // 한줄에 ;로 구분하면 명령어를 2개 이상 처리가능
		System.out.println(no1+" == " + no2 + " : "+ ( no1 == no2 ) );
		System.out.println(no1+" != " + no2 + " : "+ ( no1 != no2 ) );
		System.out.println(no1+" >= " + no2 + " : "+ ( no1 >= no2 ) );
		System.out.println(no1+" <= " + no2 + " : "+ ( no1 <= no2 ) );
		System.out.println(no1+" > " + no2 + " : "+ ( no1 > no2 ) );
		System.out.println(no1+" < " + no2 + " : "+ ( no1 < no2 ) );
		// 점수를 할당하여 점수가 70점이상일 때, 합격여부를 true/false값으로 출력
		int inputPoint = 60;
		System.out.println("취득 점수:"+inputPoint+", 합격여부:"+  (inputPoint>=70) );
		// ex1) 변수 age를 지정해서 나이 25를 할당하고, 성인 여부(18이상)를 출력하세요.
		int age = 25;
		System.out.println("입력된 나이:"+age+", 성인여부:"+(age>=18));
		// ex2) 4지선다문제에서 3번이 정답을 때, 정답여부를 출력하세요..(chNo 활용)
		int chNo = 3;
		System.out.println("선택한 번호:"+chNo+", 정답여부:"+(chNo==3));
		// ex3) 수능시험 할인을 하는데, 정확하게 만18세를 기준을 한다고 한다. 
		//     나이와 수능할인 불가 여부출력(ckAge -나이변수)
		int chAge = 18;
		System.out.println("나이:"+chAge+", 수능할인 불가 여부:"+(chAge!=18));
		// ex4) 연비(km/l)입력하여 15km 미만일 때, 연비효율 미달여부를 출력하세요(kml-연비)
		int kml = 17;
		System.out.println("연비효율 미달여부:"+(kml<15));
		// ex5) 놀이기구 입장 키를 100cm로 정했을 때, 입장 여부를(height-키)
		int height = 120;
		System.out.println("놀이기구 입장 여부:"+(height>=100));
		//### ✅ 1. 커피 자동 판매기  
		//정수형 변수 `userMoney(3000)`와 커피가격 4000 선언하고, 
		// 가진 돈이 커피값보다 많거나 같을 때 구매 가능(true)을 출력하세요.
		int userMoney = 5000;
		System.out.println("구매 가능 여부:"+ (userMoney>=4000) );


		//### ✅ 2. 게임 승리 조건 확인  
		//정수형 변수 `myScore(70)`와 `enemyScore(80)`를 비교하여, 
		// 이긴 경우와 비긴 경우를 각각 true/false로 출력하세요.
		int myScore = 90;
		int enemyScore=80;
		System.out.println("이긴 경우:"+(myScore>enemyScore));
		System.out.println("비긴 경우:"+(myScore==enemyScore));
		System.out.println("진 경우:"+(myScore<enemyScore));
		//### ✅ 3. 몸무게 변화 비교  
		//실수형 변수 `beforeWeight(70)`와 `afterWeight(65)`를 비교하여 체중이 줄었는지(true/false)를 확인하세요.
		double beforeWeight = 70; // 70.0 실수형 변수에 할당시.. int ==> double (promote)
		double afterWeight = 84;  // 64.0
		System.out.println("몸무게가 줄었는지 여부:"+(beforeWeight > afterWeight));
		//### ✅ 4. 출석률 합격 여부  
		//실수형 변수 double attendance(0.8)`를 선언하고, 출석률이 75% 이상인지 여부를 boolean으로 출력하세요.
		// 75% ==> 0.75
		double attendance = 0.8; // 80%
		System.out.println("출석율 합격 여부:"+(attendance>=0.75));
		
		
		int money = 3000;
		int prodPrice = 4000;
		System.out.println("물건 구매 가능 여부:"+(money>=prodPrice));
		
		
		
		
		
		
		
		
		
		
		
		
		


		
		
		
		
		
		
		
		
		
		
		
	}
}
