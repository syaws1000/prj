package javaexp.a02_var;

public class A05_JavaData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바에서 사용되는 데이터 유형
		1. 기본데이터유형
			정수 : 대표 int
			실수 : 대표 double
			boolean 유형 : true/false
			char : 문자 하나를 할당하는 유형 ''사이에 입력
		2. 객체형데이터유형
			String : 문자열데이터 처리
			int[] : 정수형배열데이터 처리(배열유형)
			class Person: 사용자 정의 객체 유형..
			
		 * */
		int kor = 70;
		boolean isPass1 = kor>=80;
		System.out.println("합격 여부(boolean값):"+isPass1);
		boolean isPass2 = true;
		System.out.println("boolean에 바로 할당한 경우:"+isPass2);
		int price = 3000;
		boolean isOverValue = price>=2000;
		System.out.println("해당 가격이 비싼지 여부:"+isOverValue);
		boolean isOverValue2 = false;
		System.out.println("바로 할당하여 출력:"+isOverValue2);
		// ex) myWeight 몸무게를 할당하고,   isOverWeight  70이상일 때, 과체중 여부를 boolean 할당하여
		// 출력되게 하세요
		double myWeight = 72.5;
		boolean isOverWeight = myWeight>=70;
		System.out.println("과체중 여부:"+isOverWeight);
		
		
		
		
	}

}
