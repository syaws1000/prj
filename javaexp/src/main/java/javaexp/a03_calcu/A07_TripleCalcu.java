package javaexp.a03_calcu;

public class A07_TripleCalcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 
		# 삼항연산자
		1. 세 개의 피연산자를 필요로 하는 연산자를 말한다.
		2. 일반적으로 연산자 다음에 나오는 조건에 의해 분기되어 여러 데이터의 결과를 처리하는데,
			이 삼항연산자를 활용하면 바로 해당 라인에서 원하는 결과가 앞에서 배운 비교/논리 연산자의
			결과인 true/false가 아닌 실제 결과값을 처리할 수 있게 한다.
		3. 기본 형식
			조건식(비교/논리연산식) ? 조건식이true일때처리할데이터:조건식이false일때처리할 데이터;
			위와 같이 조건식에 따라 결과데이터1, 결과데이터2로 처리가 가능하기에 삼항연산자라고 한다.
			
		*/
		int point = 80;
		System.out.println("결과:" + ( point>=70 ? "합격" : "불합격" ) );
		// ex) 나이(age)를 할당하고, 18세이상이면 성인 그외는 미성년자를 표현하는 삼항연산자를 활용하여
		//     출력하세요..
		int age = 25;
		System.out.println("나이:"+age+", 구분:"+(age>=18?"성인":"미성년자"));
		
		// ex) 나이(age2)가 15세 이상이고  소지금(money)이 10000원이면, 입장가능합니다 그외는 입장
		//     불가합니다. 라는 문자열을 출력하세요..
		int age2 = 25; int money = 1000;
		System.out.println("나이:"+age2);
		System.out.println("소지금액:"+money);
		System.out.println( age2>=15 && money>=10000 ?"입장가능합니다!":"입장불가능합니다");
		
		
		
		
		
		
		
	}

}
