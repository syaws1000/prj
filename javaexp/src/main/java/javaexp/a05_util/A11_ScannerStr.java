package javaexp.a05_util;

import java.util.Scanner;

public class A11_ScannerStr {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in); // 1. 기본 모듈 생성.
		System.out.print("좋아하는 음식 입력1:");
		String food1 = sc.nextLine();
		System.out.print("좋아하는 음식 입력2:");
		String food2 = sc.nextLine();
		System.out.print("좋아하는 음식 입력3:");
		String food3 = sc.nextLine();
		System.out.println("# 좋아하는 음식 리스트 #");
		System.out.println(food1);
		System.out.println(food2);
		System.out.println(food3);
		
	}	

}
