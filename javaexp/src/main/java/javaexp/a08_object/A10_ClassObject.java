package javaexp.a08_object;

import javaexp.a08_object.vo.Book;
import javaexp.a08_object.vo.Man;
import javaexp.a08_object.vo.Woman;

public class A10_ClassObject {

	public static void main(String[] args) {
		
		// 클래스(설계도)부터 실제 처리하는 객체를 생성
		Man m1 = new Man(); // ctrl shift o
		System.out.println("heap영역의 주소값1:"+m1);
		m1.name="마길동";
		System.out.println(m1.name);
		Man m2 = new Man(); // ctrl shift o
		System.out.println("heap영역의 주소값2:"+m2);
		System.out.println(m2.name);
		
		
		
		Book b1 = new Book();
		System.out.println("heap영역의 주소:"+b1);
		System.out.println("처음에 현재 페이지:"+b1.curPage);
		b1.curPage=25;
		Book b2 = new Book();
		System.out.println("heap영역의 주소:"+b2);
		System.out.println("처음에 현재 페이지:"+b2.curPage);
		
		System.out.println("# 두개의 객체의 curPage 비교 #");
		System.out.println("첫번째 도서:"+b1.curPage);
		System.out.println("두번째 도서:"+b2.curPage);
		// Woman
		// public int age;
		// w1
		// w2 
		// w1.age = 21
		// 비교..		
		Woman w1 = new Woman();
		Woman w2 = new Woman();
		System.out.println(w1);
		System.out.println(w2);
		System.out.println(w1.age);
		System.out.println(w2.age);
		w1.age = 21;
		System.out.println(w1.age);
		System.out.println(w2.age);
		
		
		
		
	}
}
