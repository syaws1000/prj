package javaexp.a05_util;

import java.util.Scanner;

public class A02_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바의 데이터 입력 처리
		1. 내장된 api에 있는 Scanner객체를 import
		2. 객체생성
			Scanner sc = new Scanner(System.in);
			Scanner sc : 객체 생성에 있어서 sc 참조변수로 선언
			sc = new Scanner() :  heap영역에 new라는 키워드를 통해 객체 생성
			Scanner(System.in) : 객체 생성시, 생성자의 매개변수로 기본 입력 객체(System.in)할당
		3. 기능메서드 호출..
			sc.nextLine() : 문자열입력 후, enter를 입력시 문자데이터를 할당 처리..
		 * */
		Scanner sc = new Scanner(System.in);// ctrl+shift+o : 자동 내장객체 import 선언(상단)
		System.out.println("이름을 입력하세요:");
		String name = sc.nextLine();
		System.out.println("입력된 이름:"+name);
		// ex) A03_Scanner.java   
		///    물건명을 입력받아서 출력되게 하세요..
		
		
	}

}
