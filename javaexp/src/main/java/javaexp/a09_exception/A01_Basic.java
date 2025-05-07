package javaexp.a09_exception;

public class A01_Basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// unchecked exception : 실행시 발생하는 예외 내용..
		try {
			System.out.println("프로그램 시작");
			String str[]= new String[3]; // 3개짜리 문자열 배열
			System.out.println(str[3].toString()); // 4번째 문자열 배열
			
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("예외 발생시 처리할 내용");
			System.out.println(e.getMessage());
			
		}
		// 예외가 발생해서 더 이상 수행하지 않는다.
		System.out.println("다음 라인1");
		System.out.println("프로그램 종료");
		// ArrayIndexOutOfBoundsException
		
	}

}
/*

# Exception 처리 기초
1. 프로그램 실행 중에 정상 흐름을 깨뜨리는 비정상 상황(파일 없음, 0으로 나누기 등)이 발생할 때,
	자바프로그래밍으로 이러한 예외적인 상황에 적절하게 대응하여 정상적이 않아서 프로그램이 중단되는 것을
	막아주는 역할과 함께 정상적인 처리까지 해주는 프로그래밍을 처리하는 것을 말한다.
2. 종류
	 1) checked exception : 컴파일러가 확인하여 반드시 예외를 처리하여야만 코드를 진행할 수 있는 예외
	 	IOException, SQLException - 필수 예외 처리.. 해당 예외를 하지 않을 때, 에러까지 표현..
	 2) unchecked exception : 실행 시점에만 감지
	 	NullPointerException, ArrayIndexOutOfBoundsException
3. 핵심 개념 : 객체(클래스)에서 예외를 throw 던지고 catch로 잡는다.
4. 기본 형식
	try{
		예외의 발생 가능성이 있는 코드 내용...
		
	}catch(Exception e){ 예외가 발생시 처리할 내용 블럭
		e.getMessage() : 해당 예외의 내용을 처리해서 그 메시지 내용을 출력하는 내장된 Exception의 기능메서드.
	
	}

# unchecked exception 예외 처리 순서
1. 코드 내용 중에서 예외가 가능성 있는 코드를 처리하여
	강제로 예외가 발생하게 한다.
2. 그 코드에서 발생하는 exception 예외 객체를 copy 해놓는다.
3. 기본 형식인
	try{
		발생할 예외 가능성 있는 코드 삽입
	}catch(Exception e){
		System.out.println("예외발생:"+e.getMessage());
	}
	위 형식으로 발생할 예외 코드를 삽입후, Exception에  복사한 예외 객체를 붙인다.
4. 시작 코드와 종료수행 코드, 예외 발생시 처리할 코드를 각 블럭에 입력 후, 
 	수행 여부를 확인한다.
 	
	
*/


