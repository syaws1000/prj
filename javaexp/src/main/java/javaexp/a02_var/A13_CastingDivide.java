package javaexp.a02_var;

public class A13_CastingDivide {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바에서 나눗셈 처리.
		1. 자바는 정수형에서 정수형을 나누기를 하면 정수만 처리된다.
			즉, 자동으로 casting처리되어 실수형이 처리되지 않는다.
			10/3 ==> 3   ps) 10%3 ==> 1 : 나머지 연산자에 의해 나머지값 처리..
		2. 자바에서 정수형에서 정수형으로 나눌 때, 소숫점이하까지 처리할려면
			분모이든 분자이든 실수형으로 변환하여 처리하여야 한다.
			10/3.0 ==> 3.3333...   (double)10/3 ==> 3.3333..
			10/(double)3 ==> 3.3333....
			부모이든 분자이든 강제형변환 처리를 하여야지 원하는 소숫점이하 연산이 처리된다.
				
		*/
		System.out.println("정수형의 나눗셈 처리");
		System.out.println("10/3 = "+ (10/3));
		System.out.println("10%3 = "+ (10%3));
		System.out.println("10/3.0 = "+ (10/3.0));
		System.out.println("(double)10/3 = "+ (double)10/3);
		System.out.println("10/(double)3 = "+ (10/(double)3));
		
		// ex) 곰돌이의 마리수를 변수(bearCnt)로 지정해서 할당하고(5마리), 
		// 사과의 갯수(appleCnt)를 변수에 할당하여 지정하고(17개)
		// 위 연산식에 의해, 동일하게 나눈 갯수(정수)와 나머지 갯수를 출력하고,
		// 실수까지 동일하게 나눈 내용을 출력하세요
		int bearCnt = 5;
		// int 정수, bearCnt 변수명, = 5: 대입연산자를 통해서 데이터 5를 할당
		int appleCnt = 17;
		System.out.println("동일한 나눈 갯수(정수):"+appleCnt/bearCnt);
		System.out.println("나눈 후 나머지 갯수(정수):"+appleCnt%bearCnt);
		System.out.println("동일한 나눈 갯수(실수):"+appleCnt/(double)bearCnt);
		// 자바에서는 정수형/정수형으로 나눌 때, 실수값까지 가져올려면 적어도 분모나 분자 둘중에 하나는 실수형이어야 하기에
		// ()타입캐스트으로 처리하였다.
		
		
		
		
		
		
		
	}

}
