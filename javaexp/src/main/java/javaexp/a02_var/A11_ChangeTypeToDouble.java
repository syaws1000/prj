package javaexp.a02_var;

public class A11_ChangeTypeToDouble {

	public static void main(String[] args) {
	/*
	# 실수형 문자열을 실수형으로 데이터 변환 처리
	1. 실수형 데이터의 문자열을 연산이 가능한 실수형 데이터를 처리하는 것을 말한다.
	2. 기본 형식
		String dblStr = "3.14";
		double dbl = Double.parseDouble(dblStr);
		double : 실수형 데이터 타입
		Double : 실수형 wrapper 클래스
		parseDouble(): 실수형 wrapper 클래스의 기능메서드로 실수형 문자열을 실수로 변환 처리..
	 *  */
		String dblStr = "3.14";
		double dbl = Double.parseDouble(dblStr);
		System.out.println(dblStr + 1.5);
		System.out.println(dbl + 1.5);
		// ex) String dblStr2로  "70.2"를 할당하고, double dbl2에 형변환된 데이터 할당 후,
		//     각각  12.5를 할당 후, 결과를 출력하세요.
		String dblStr2 = "70.2";
		double dbl2 = Double.parseDouble(dblStr2);
		System.out.println(dblStr2 + 12.5);
		System.out.println(dbl2 + 12.5);
		
		
		
	}

}
