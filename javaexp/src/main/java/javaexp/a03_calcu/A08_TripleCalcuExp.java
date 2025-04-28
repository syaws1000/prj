package javaexp.a03_calcu;

public class A08_TripleCalcuExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 3항 연산자
1. 조건식을 평가하여 참이면 첫 번째 피연산자를 반환하고, 거짓이면 두번째 피연산자를 반환합니다.
	이 연산자는 조건문을 간닿하게 표현할 때, 유요하게 사용됩니다.
2. 구조
	조건식?표현식1 : 표현식2
	이 구조에서 조건식은 참 또는 거짓을 평가할 수 있는 식입니다. 조건식이 참이면 표현식1이
	결과값이 되고, 거짓이면 표현식2가 결과값이 됩니다.
	ex)예를 들어 나이가 18세 이상이면 성인입니다. 그렇지 않으면 미성년자입니다.를 출력하는
	간단한 예제는 아래와 같습니다.
*/
		int age = 10;
		System.out.println(age>=18);
		String status = age>=18?"성인입니다.":"미성년자입니다.";
		System.out.println("당신은 "+status);
		// ex)  price로 물건의 가격을 할당하고,  100000이상이면 물건의 가격인 비싸군요, 미만이면 물건의 가격이 싸군요
		//     라고 출력되게 하세요..
		int price = 1200;
		String msg = price>=100000?"비싸군용":"싸군요";
		System.out.println("물건의 가격이 "+msg);
		
		
		
			
	}

}
