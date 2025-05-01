package javaexp.a08_object.a04_relation;

import java.util.ArrayList;
import java.util.List;

public class A03_List {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 자바에서 동적(변경가능배열) 처리 객체..
		// List<데이터유형> list = new 동적배열객체<데이터유형>();
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
		// ex) 등록할 회원의 이름을 위 형식으로 설정해서 mlist에 담고,
		//     담은 데이터를 mlist.get(0) 형식으로 하나씩 출력해보고, 
		//     반복문을 통해서도 출력해보세요..
		List<String> mlist = new ArrayList<String>();
		mlist.add("홍길동");		
		mlist.add("김길동");		
		mlist.add("신길동");		
		System.out.println(mlist.get(0));	
		System.out.println(mlist.get(1));	
		System.out.println(mlist.get(2));
		// for(단위데이터유형 변수명:배열)
		for(String name:mlist) {
			System.out.println(name);
		}
		
		
	}

}

