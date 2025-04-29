package javaexp.a08_object.a04_relation;

import java.util.ArrayList;
import java.util.List;

public class A03_List {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 자바에서 동적(변경가능배열) 처리 객체..
		List<String> list = new ArrayList<String>();
		list.add("사과");// 담기
		list.add("바나나");
		list.add("딸기");
		System.out.println(list.get(0)); // 가져오기..
		System.out.println(list.get(1));
		System.out.println(list.get(2));
		System.out.println("# 반복문 처리 #");
		for(String fruit:list) {
			System.out.println(fruit);
		}
		
		
	}

}
