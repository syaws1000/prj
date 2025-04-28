package javaexp.a04_data;

public class A03_Boolean {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# boolean data Type
		1. 참 거짓을 나타내는 데이터유형을 boolean 유형이라고 한다.
		2. 데이터는 true/false값을 할당할 수 있는데,
		3. 비교연산자는 논리연산자의 값의 결과로도 위 내용을 할당할 수 있다..
			5>=2(true), 5<=2(false)
		4. 유형의 선언과 할당
			boolean b1 = 5>=2;
			boolean b2 = 5<=2;
		 * */
		
		boolean b1 = true;
		System.out.println("boolean 데이터 유형 출력:"+b1);
		boolean b2 = 5>=2;
		System.out.println("boolean 결과:"+b2);
		int point = 70;
		boolean b3 = point>=60; // 60이상일 때, 합격여부를 b3에 할당.
		System.out.println("점수:"+point+", 합격 여부:"+b3);
		// ex) 변수 b4에 boolean값  false를 할당해서 출력하고,
		//     변수 b5에는  정수형 변수 age에 25데이터를 할당하고, 성인 여부(18이상)를 할당하여 출력하세요..
		boolean b4 = false;
		System.out.println("boolean b4에 할당된 값:"+b4);
		int age = 25;
		boolean b5 = age>=18;  // 성인여부 boolean할당.
		System.out.println(age+"살, 성인여부를 출력:"+b5);
		
		int price = 1000;
		boolean isOverValue = price>=2500;
		System.out.println("비싼 여부:"+isOverValue);
		// ex) 정수 money (내가 가진 금액)
		//     정수  prodPrice (물건의 가격)
		//     boolean canBuyProduct  물건을 살수 있는지 여부..
		//     구매가능 여부를 출력..                     
		int money = 5000;
		int prodPrice = 3000;
		boolean canBuyProduct = money>=prodPrice; // 비교연산식으로 처리
		System.out.println("구매가능여부:"+canBuyProduct);
		
		
		
		
	}

}
