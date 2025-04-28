package javaexp.a05_util;

import java.util.Scanner;

public class A12_ScannerNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 숫자형 변환 입력 처리..
		Scanner sc = new Scanner(System.in);
		// 1. 국어점수(정수)
		System.out.print("국어점수입력:");
		// 객체.기능메서드("문자열매개변수") ==> 결과값 리턴..
		// Integer.parseInt("25")  ==> 25
		// 정수형문자열을 정수변환
		int kor = Integer.parseInt(sc.nextLine());
		// 2. 영어점수(정수)
		System.out.print("영어점수입력:");
		int eng = Integer.parseInt(sc.nextLine());
		int tot = kor + eng;
		System.out.println("총 합산:"+tot);
		double avg = tot/2.0;
		System.out.println("평균점수:"+avg);
		
		
		
	}

}
