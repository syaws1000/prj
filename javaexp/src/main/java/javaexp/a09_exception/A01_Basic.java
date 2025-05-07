package javaexp.a09_exception;

public class A01_Basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

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

	
	
	
*/


