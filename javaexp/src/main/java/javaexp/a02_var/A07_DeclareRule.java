package javaexp.a02_var;

public class A07_DeclareRule {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 변수명 선언규칙
1. 필수 : 규칙대로 하지 않으면 에러발생
	1) 선언된 변수는 다시 선언하지 않는다.
		int no1; 선언
		int no1; (X) 재선언
		no1 = 25; (O) 할당
	2) 첫번째 글자는 문자이거나 $,_이어야 하고, 숫자로 시작할 수 없다.
		int 2no; x
		int no2;
	3) 자바의 예약어(명령어)는 사용할 수 없다.
		int break;
		int for;
	4) 변수를 대소문자를 구분한다.
		int No1;
		int no1;
		int nO1;
		==> 다 다른변수로 인식한다.
		
2. 관례 : 가독성에 의해서 준수할 것을 권유한다.
	1) 기본 변수명을 소문자로 시작해서, 합성어의 경우 _, 대문자로 구분한다.
		int setName;
		int set_name;
	2) 클래스명은 대문자 시작한다. 자바는 객체의 경우 대문자로 시작한다.
		메서드명, 변수명은 소문자로 시작..
 * */
		int no1;
//		int no1; (x)
		
		int num;
		int $99;
		int _aa;
//		int 9no;  숫자로 시작할 수 없다.
//		int #aa;  $, _만 변수로 사용할 수 있다.
//		int break; 명령어 사용 불가..
//		String if; 명령어 사용 불가..
		int if01;  // 뒤에 번호를 붙이는 순간 명령어에서 벗어 난다.
		
		int no2;
		int No2;
		int nO2;
		// 위 변수는 다 다른 변수로 인식한다.
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
