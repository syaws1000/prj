package javaexp.a05_util;

import java.util.Scanner;

public class A07_InputString {

	public static void main(String[] args) {
		// ex) 학생의 이름과 국어 영어 수학 점수를 입력받아서, 총점과 평균을 구하세요..
		Scanner sc = new Scanner(System.in);
		System.out.print("학생의 이름:");
		String name = sc.nextLine();
		System.out.print("국어 점수:"); String korStr = sc.nextLine();
		System.out.print("영어 점수:"); String engStr = sc.nextLine();
		System.out.print("수학 점수:"); String mathStr = sc.nextLine();
		int kor = Integer.parseInt(korStr);
		int eng = Integer.parseInt(engStr);
		int math = Integer.parseInt(mathStr);
		int tot = kor + eng + math;
		System.out.println("총점:"+tot);
		System.out.println("평균(소숫점):"+tot/3.0);
		
	}

}
