package javaexp.a06_condition;

public class A04_if_else {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		# if else 구문
		1. 조건식이 분기로 true가 되는 경우와 false가 되는 경우를 처리할 때, 사용된다.
		2. 기본형식
			if(조건식){
				조건식이 true일 때, 실행되는 코드
			}else{
				조건식이 false일 때, 실행되는 코드
			}
		*/
		
		// 1. 할당할 변수를 선언 및 75데이터 할당
		int score = 85;
		System.out.println("점수:"+score);
		// 2. 분기문 처리 80이상일 때, 합격 출력, 그외는 불합격 출력
		if( score >= 80 ) {
			System.out.println("합격!!");
		}else {
			System.out.println("불합격!!");
		}
		int age = 25;
		if(age>=18) {
			// true일 때, 처리할 내용
			System.out.println("성인");
		}else {
			// false일 때, 처리할 내용
			System.out.println("미성년자");
		}
		// ex) double weight   80이상이면 과체중
		//                     미만 정산..
		double weight = 75.2;
		if( weight >= 80) {
			System.out.println("과체중입니다.");
		}else {
			System.out.println("정상입니다!");
		}
		
		
		
		// ex) 버스 정류장에서 남은 돈을 변수를 설정하여 할당한 후, 현재 남은 돈이 1200이상이면
		//     버스를 탈 수 있습니다. 출력  그외는 돈이 부족합니다. 걸어가야 해요 출력..
		// 1. 남은 돈 변수 선언(money)과 할당
		//    남은 돈 랜덤 데이터로 처리.. 범위를 100단위 100~5000
		//                                1단위로 1~50로 해서 * 100
		//                                경우의 수는 50가지  시작수는 1
		//                                마지막에 *100
		///                         (int)(Math.random()*경우의수+시작수)
		///                         ex) 1000~5000 1~5 *1000
		// 2. 조건문 처리 money>=1200
		//     1) true : 버스를 탈 수 있습니다
		//     2) false :  돈이 부족합니다. 걸어가야 해요
		//   
		int money = (int)(Math.random()*50+1)*100;
		System.out.println("현재 남은 돈:"+money);
		if(money>=1200) {
			System.out.println("버스를 탈수 있습니다.");
		}else {
			System.out.println("돈이 부족합니다. 걸어가야 해요");
		}
		
		// 국어 점수가 80 점이상이면 우수/그외는 보통이라고 출력되는 처리를 해보자.
		int kor = 70; // 설정점수 70, 80, 60
		if(kor>=80) {
			System.out.println("우수합니다.");
		}else {
			System.out.println("보통입니다.");
		}
		
		
		
		
		
		
		
		
		
		
		
	}
}
