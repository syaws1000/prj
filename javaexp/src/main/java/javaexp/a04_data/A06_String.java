package javaexp.a04_data;

public class A06_String {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# String 문자열 데이터
		1. char ==> char[] ==> String
		   문자      문자배열      문자열  유형
		   기본적으로 문자는 위와 같은 형식으로 발전해나갔다.
		   현재 고급프로그래밍의 경우 char, char[]이 없어지고 String으로 처리하고 있지만
		   중요한 부분으로 자리잡고 있다.
		2. String은 문자의 배열에서 보다 효과적으로 문자를 처리하기 위해서 문자열이라는 데이터
		   유형으로 만들어졌다.
		3. 물론, 배열이기에 객체의 개념을 가지고, 또한 여러가지 기능메서드를 활용할 수 있게 처리하고 있다.
		4. 선언 방식
			1) String 변수명 = "문자열"; // 리터럴 방식 선언과 할당.
			2) String 변수명 = new String("문자열"); // 객체 생성 방식
			주의) 위 첫번째 방식은 코드 선언할 때, 사용하는 방식으로 같은 문자열은 동일한 heap영역을 
				사용하는 특징을 가지고 있다. 두번째 방식은 코드 선언보다는 api(외부입력, DB 호출 등등)
				으로 사용할 때, 내부적으로 처리되는 방식으로 동일한 문자열이라도 다른 heap영역을 
				사용하고 있다.
		5. 활용하는 기능 메서드
			1) String은 문자열로 만들어진 객체를 사용하기에 다양한 메서드(함수)를 포함시켜서 사용하고 
				있다.
			2) 주요 기능 메서드
				equals() :문자열 내용만 비교
				length() : 문자열의 길이 리턴
				charAt(index) : 특정한 문자열의 위치에 있는 char(문자)를 가져온다.
				subString(시작index, 마지막위치) : 특정한 문자열를 추출하여 문자열을 만든다.
				indexOf("찾는문자열") : 해당 문자열의 찾는 위치를 index 번호로 가져온다.
		 * */
		// 바로 선언하여 할당하는 방식 : "홍길동" 문자열만 같으면 같은 heap영역을 사용한다.
		String name1="홍길동";
		String name2="홍길동";
		// new String 활용하여 데이터 선언하는 형식, "문자열"이 같아도 다른 heap영역을 사용한다.
		String name3 = new String("홍길동");
		String name4 = new String("홍길동");
		System.out.println("# 힙 영역 비교 #");
		System.out.println(name1==name2);
		System.out.println(name3==name4);
		// 문자열 자체만 비교할 때는 equals()를 활용하여야 한다.[주의) 자바의 특징]
		System.out.println("# 문자열 비교(equals()) #");
		System.out.println(name1.equals(name2));
		System.out.println(name3.equals(name4));
		System.out.println(name1.equals(name3));
		// ex) String으로 id를 선언하고 himan을 할당한 후.  
		//     String inputStrId로 첫번째는 =(대입연산자로 할당) "himan"
		//    String inputStrId2로 두번째는 = new String()으로 "himan" 을 할당후.
		//  id == inputStrId    id.equals(inputStrId)
		//  id == inputStrId2    id.equals(inputStrId2)   비교한 결과값을 확인하세요.
		String id = "himan";
		String inputStrId = "himan";
		String inputStrId2 = new String("himan");
		System.out.println("# == 대입연산자로 비교 #");
		System.out.println(id == inputStrId); // 문자열만 같으면 주소값이 같다.
		System.out.println(id == inputStrId2); // 주소값이 다르기 때문에..
		System.out.println("# equals()로 비교 #");
		System.out.println(id.equals(inputStrId)); // 문자열이 같으면 true
		System.out.println(id.equals(inputStrId2)); // 문자열이 같으면 true
		// * 자바에서는 equals()를 이용하여 문자열을 비교하여야 한다.
		String name="홍길동";
		System.out.println("문자열의 크기:"+ name.length());
		// 주의) 배열의 크기는 배열명.length
		//      문자열의 크기는 문자열변수.length()
		
		
		
		
		
		//
		
	}

}
