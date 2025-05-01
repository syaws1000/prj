package javaexp.a08_object.a04_relation;

import java.util.ArrayList;
import java.util.List;

import javaexp.a08_object.a04_relation.vo.Dept;
import javaexp.a08_object.a04_relation.vo.Person;
import javaexp.a08_object.a04_relation.vo2.Product;

public class A04_CallVo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Dept d1 = new Dept(10,"인사","성남");// 초기화
		System.out.println(d1.getDeptno()); // 가져오기
		System.out.println(d1.getDname());
		System.out.println(d1.getLoc());
		d1.setDname("회계"); // 변경하기
		System.out.println(d1.getDname());
		// ex) javaexp.a08_object.a04_relation.vo 에  Person  name, age, loc
		//  해당 객체를 호출하여, 생성자를 통해 초기화한 후, get/set메서드로 가져오거나 변경하세요..
		Person p01 = new Person("홍길동",25,"서울");
		System.out.println(p01.getName());
		System.out.println(p01.getAge());
		System.out.println(p01.getLoc());
		p01.setAge(30);
		System.out.println(p01.getAge());
		// javaexp.a08_object.a04_relation.vo2.Product
		// 		물건명, 가격, 갯수 설정해서 class 선언, 객체 생성.. 호출..
		Product pro01 = new Product("사과",3000,2);
		System.out.println(pro01.getName());
		System.out.println(pro01.getPrice());
		System.out.println(pro01.getCnt());
		pro01.setPrice(4000);
		System.out.println(pro01.getPrice());
		
		// List<객체> 참조변수 = new ArrayList<객체명>();
		// 참조변수.add(new 객체명(데이터1, 데이터2, 데이터..));
		// 참조변수.add(new 객체명(데이터1, 데이터2, 데이터..));
		// 참조변수.add(new 객체명(데이터1, 데이터2, 데이터..));
		// 참조변수.get(0) : 할당한 객체중에 첫번째 객체..
		List<Product> plist = new ArrayList<Product>();
		plist.add(new Product("사과",3000,2));
		plist.add(new Product("바나나",4000,3));
		plist.add(new Product("딸기",12000,5));
		Product pd01 = plist.get(0); // 담긴 객체 중에 첫번째 객체를 가져온다.
		System.out.println(pd01.getName());
		System.out.println(pd01.getPrice());
		System.out.println(pd01.getCnt());
		System.out.println("물건명\t가격\t갯수");
		// for(단위데이터 : 배열데이터 )
		for(Product pro:plist) {
			System.out.print(pro.getName()+"\t");
			System.out.print(pro.getPrice()+"\t");
			System.out.print(pro.getCnt()+"\n");
		}
		
		
		
	}

}
