package javaexp.a06_condition;

import java.util.Scanner;

public class A07_nestedIf_login {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("# 로그인 #");
		System.out.print("아이디입력:");
		String id = sc.nextLine();
		System.out.print("패스워드입력:");
		String pwd = sc.nextLine();
		System.out.println("입력한 id:"+id+", password:"
				+pwd);
		// 중첩 if 문 처리
		// 1. 아이디 체크(조건1) if(id.equals("himan")){
		
		//		2. 패스워드체크(조건2) if(pwd.equals("7777")){
		
		if(id.equals("himan")) {
			if(pwd.equals("7777")){
				// 경우1 - 아이디가 맞고, 패스워드 맞을 때 : 로그인
				System.out.println("로그인 성공1!!");
			}else{
				// 경우2 - 아이디가 맞고, 패스워드 틀릴 대 : 패스워드 실패
				System.out.println("패스워드가 틀렸습니다.");
			}
		}else {
			System.out.println("아이디가 틀려서 로그인 실패!");
			// 아이디 오류
			/*
			if(true) {
				// 경우3 - 아이디가 틀리고, 패스워드가 맞을 때 : 아이디 실패
			}else {
				// 경우4 - 아이디가 틀리고, 패스워드 틀릴 때 : 아이디,패스워드 실패
			}
			*/			
		}
		if(id.equals("himan") && pwd.equals("7777")) {
			
			System.out.println("로그인 성공2!!");
		}else {
			System.out.println("로그인 실패!!");
		}
		
	}

}
