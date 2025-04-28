package javaexp.a02_var;

public class A06_PrimitiveData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 여러가지 기본 데이터 유형
		1. int 정수
		2. double 실수
		3. boolean 참/거짓
		4. char 문자 한자 'A'
			char ch01 = 'B';
		# 문자열 데이터 처리
		String name="홍길동";
		 * */
		int num01 = 25;
		double num02 = 3.14;
		boolean isTrue = true;
		boolean isFalse = false;
		boolean isCheck = num01>=50;
		char ch01 = 'A';
		String name="홍길동";
		System.out.println(num01);
		System.out.println(num02);
		System.out.println(isTrue);
		System.out.println(isFalse);
		System.out.println(isCheck);
		System.out.println(ch01);
		System.out.println(name);

//		ex1) int 변수 age에 나이를 저장하고, age>=20인지 검사한 결과를 boolean변수에 담아 아래와 같이 출력
//		나이 : 25
//		성인인가요? true
		// 선언된 변수
		int age = 25;
		boolean isAdult = age>=20;
		System.out.println("나이:"+age);
		System.out.println("성인인가요? "+isAdult);
//      ex1-1) int 변수 price에 가격을 저장하고, price>=50000인지 검사한 결과를 boolean변수 
		//     overPrice에 담아 아래와 같이 출력하세요
		//     가격: 12000
		//     비싼지여부? false
		int price = 12000;
		boolean overPrice = price>=50000;
		System.out.println("가격:"+price);
		System.out.println("비싼지 여부?"+overPrice);
		
//		ex2) String 변수 myName에 이름을, char 변수 favoriteChar에 좋아하는 문자를 저장하고,
//			아래와 같이 출력하세요
//		내 이름은 홍길동입니다.
//		내가 좋아하는 문자는 ♥입니다.
		String myName = "홍길동";
		char favoriteChar = '♥';
		System.out.println("내 이름은 "+myName+"입니다.");
		System.out.println("내가 좋아하는 문자는 "+favoriteChar+"입니다.");
/*		ex2-1) String 변수 mySubject에 과목명을 할당, char 변수  thisGradeChar에 이번에 받은
 * 		학점 문자를 저장하고 아래와 같이 출력하세요
 * 	    내가 이번에 수강한 과목은 컴퓨터공학개론입니다.
 *      이번에 내가 받은 학점은  A입니다.
 * */
		String mySubject = "컴퓨터공학개론";
		char thisGradeChar = 'A';
		System.out.println("내가 이번에 수강한 과목은 "+mySubject+"입니다.");
		System.out.println("이번에 내가 받은 학점은  "+thisGradeChar+"입니다.");
		
//		ex3) int 변수 score에 점수를 입력하고, score>=60이면 합격, 아니면 불합격을 boolean으로 
//		저장하고 아래와 같이 출력하세요
//		점수 : 72
//		합격 여부 : true
		int score = 72;
		boolean isPass = score>=60;
		System.out.println("점수:"+score);
		System.out.println("합격여부:"+isPass);
/*		
		### ✅ **실습 문제 4 — 우주선 탑승 검사**  
		> int 변수 `height`에 키(cm)를 저장하고,  
		> `height >= 150`이면 탑승 가능(true), 아니면 불가능(false)을 boolean에 담아 출력해보세요!  
		> 출력 예시 :  
		당신의 키 : 160cm  
		우주선 탑승 가능? true
*/
		int height = 160;
		boolean canGo = height >= 150;
		System.out.println("당신의 키 : "+height+"cm");
		System.out.println("우주선 탑승 가능? "+canGo);
		
/*		
		### ✅ **실습 문제 5 — 마법사의 이름과 마법 문자**  
		> String 변수 `wizardName`에 마법사의 이름을,  
		> char 변수 `magicSymbol`에 마법 기호 문자를 저장한 후  
		> 아래처럼 출력해보세요!  
		> 출력 예시 :  
		마법사 이름 : 해리포터  
		마법 기호 : ✨
*/		
		String wizardName = "해리포터";
		char magicSymbol = '✨';
		System.out.println("마법사 이름 : "+wizardName);
		System.out.println("마법 기호 : "+ magicSymbol);
		
		
	}

}
