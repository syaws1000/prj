package javaexp.a08_object.a04_relation;

import javaexp.a08_object.a04_relation.vo.Dept;
import javaexp.a08_object.a04_relation.vo.Person;

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
		
		
		
	}

}
