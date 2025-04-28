package javaexp.a03_calcu;

public class A06_LogicalCalcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		# 논리연산식
		1. 앞선 비교연산식을 조합하여 논리값을 이루는 연산식을 말한다.
		2. 프로그램에서 많이 활용되는 부분인데, 비교연산식은 하나의 boolean(true/false)값을 기준으로
			처리한다면 논리연산식은 이러한 비교연산식을 2개 또는 부정연산으로 처리하는 것을 말한다.
		3. 가장 많이 쓰이는 로그인시, id가 지정된 문자열이고, pwd도 지정된 문자열 일때,
			즉, 둘다 true일 때, 인증이 되는것 등이 예라고 할 수 있다.
		4. 종류
			1) 조건1 && 조건2 : 조건1과 조건2가 모두 true일 때, true이고, 그 외는 false
			2) 조건1 || 조건2 : 조건1과 조건2 둘 중에 하나만 true이면 true이고,
							모두 다 false 일 때만 false인 경우를 말한다.
			3) !(조건1) : 해당 조건이 true이면 false, false이면 true인 경우로 처리되는 부정
				연산자를 말한다.
				
		*/
		// 국어, 영어 점수 둘다 80점 이상이면 상금1(100000) 획득
		// 국어, 영어 점수 둘 중에 하나만 80점 이상이면 상금2(50000) 획득
		// 국어, 영어 점수 둘다  80점이 안되어 어떤 상금도 받지 못하는 경우 
		int kor =70; int eng = 70;
		System.out.println("둘다 80점 이상일 때, 상금1 획득 여부:"+(kor>=80 && eng>=80));
		System.out.println("둘 중에  하나만 80점 이상일 때, 상금2 획득 여부:"+(kor>=80 || eng>=80));
		System.out.println("어떤 상금도 받지 못하는 여부:"+!(kor>=80 || eng>=80));
		// ex) 나이(age)가 18세 이상이고, 필기점수(point)가 60점 이상이면, 운전면허를 발급받는다고 할 때, 
		//     운전면허 발급 여부를 출력하세요..
		int age = 15; int point = 75;
		System.out.println("운전면허 발급 여부:" + (age>=18&&point>=60));
		// ex) 나이(age2)가 5세 이상이거나 신장(height)이 100cm 이상이면 놀이기구입장을 할 수 있다고 할 때.
		// 		나이와 신장을 설정해서 입장 가능 여부를 출력하세요..
		int age2 = 7; int height = 130;
		System.out.println("놀이기구입장 여부:"+( age2>=5 || height>=100) );
		/*
		ex) 변수 level(현재레벨)과 loginDay(연속 로그인 일수)를 설정하여
		레벨이 10이상이거나 연속 로그인 7일 이상이면 보너스를 지급하기로 했다면 보너스 지급 여부를 출력..
		 * */
		int level = 5; int loginDay = 5;
		System.out.println("보너스 지급 여부:"+(level>=10 || loginDay>=7 ));
		/*
		ex) 나이가 40세 이상(age3)이거나, 건강 위험 지수(dangerPoint)가 70이상일 때 건강검진 대상이 됩니다.
		위 내용에 변수를 설정해서, 건강검진 대상이 되지 않는 여부를 출력하세요..
		 * */
		int age3 = 35; int dangerPoint = 65;
		System.out.println("건강검진 대상 여부:"+(age3>=40 || dangerPoint>=70));
		System.out.println("건강검진 대상 되지 않는 여부:"+!(age3>=40 || dangerPoint>=70));
		/*
		ex) 주문금액(orderPrice)와 itemCount(상품 갯수)를 입력받아
			주문 금액이 3000이상이거나 상품 갯수가 5개 이상이면 무료 배송을 한다.
			위 내용에서 유료 배송이 되는 여부를 출력하세요..			
		 * */
		int orderPrice = 2000; int itemCount = 4;
		System.out.println("무료 배송 여부:"+(orderPrice>=3000|| itemCount>=5));
		System.out.println("유료 배송 여부:"+!(orderPrice>=3000|| itemCount>=5));
		
		int age1 = 65;
		// age1에 따라를 무료입장( age1 5세미만 이거나 age1 65세 이상...경우)
		System.out.println("무료입장 가능 여부:"+(age1<5 || age1>=65));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		int kor1 = 70; //ctrl+s 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
