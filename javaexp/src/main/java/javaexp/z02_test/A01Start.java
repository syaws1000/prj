package javaexp.z02_test;

import java.util.Scanner;

public class A01Start {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("자바 시작"+"문자열");
		System.out.println(25+25);
		int no;
		int nO;
		System.out.println("번호\t이름\t점수");
		System.out.println(1+"\t"+"홍길홍"+"\t"+70);
		no = 2;
		String name="마길동";
		int point = 80;
		System.out.println(no+"\t"+name+"\t"+point);
		System.out.println(no+"\n"+name+"\n"+point);
		System.out.println("이름 부르다 \"홍길동!\" ");
		System.out.println("이름 부르다 \\홍길동!\\ ");
		int no2;
		
		no2 = 30;
		
		int no3 = 40; 
		
		no3 = no3 + 5;
		no3+=5;
		
		int no4 = 5;
		int no5 = 6;
		/*
		no6, no7 
		@@ + @@ = @@
		@@ - @@ = @@
		@@ * @@ = @@
		@@ / @@ = @@
		 * */
		
		System.out.println(no4+" + "+no5+" = "+(no4+no5));
		System.out.println(no4+" - "+no5+" = "+(no4-no5));
		System.out.println(no4+" * "+no5+" = "+(no4*no5));
		System.out.println(no4+" + "+no5+" = "+(no4+no5));
		System.out.println(no4+" + "+no5+" = "+(no4+no5));
		int age = 15;
		
		System.out.println("성인여부:"+( age>=18 ));
		System.out.println("청소여부:"+( age<18 && age>=14 ));
		
		boolean isAult = age>=18;
		char c = 'A';
		
		int arr[] = {10,20,30};

		Person p = new Person();
		
		System.out.println(p);
		
		
		
		Scanner sc = new Scanner(System.in);
	    System.out.print("이름:");
	    String name1 = sc.nextLine();
	    System.out.println(name1);
		
		
		
		
	}

}
class Person{}
