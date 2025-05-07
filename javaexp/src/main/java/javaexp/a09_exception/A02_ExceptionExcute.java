package javaexp.a09_exception;

public class A02_ExceptionExcute {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("시작");
		
		
		//ArithmeticException
		try{
			for(int cnt=5;cnt>=-5;cnt--) {
				System.out.println(1/cnt);
			}
			
		}catch(ArithmeticException e){ //예외가 발생시 처리할 내용 블럭
			System.out.println("# 예외 발생 #");
			System.out.println(e.getMessage()); //: 해당 예외의 내용을 처리해서 그 메시지 내용을 출력하는 내장된 Exception의 기능메서드.
		
		}	
		System.out.println("종료");
		
		
		// 연습 예제..
		System.out.println("# 문자열 처리 프로그램 #");
		

		try{
			String str=null;
			System.out.println("문자열 길이:" + str.length()); // 예외를 처리하세요..			
		}catch(Exception e){
			System.out.println("예외발생:"+e.getMessage());
		}		
		
		
		System.out.println("# 문자열 처리 프로그램 종료 #");
		
//# unchecked exception 예외 처리 순서
//1. 코드 내용 중에서 예외가 가능성 있는 코드를 처리하여
//	강제로 예외가 발생하게 한다.
//2. 그 코드에서 발생하는 exception 예외 객체를 copy 해놓는다. NullPointerException
//3. 기본 형식인
//	try{
//		발생할 예외 가능성 있는 코드 삽입
//	}catch(Exception e){
//		System.out.println("예외발생:"+e.getMessage());
//	}
//	위 형식으로 발생할 예외 코드를 삽입후, Exception에  복사한 예외 객체를 붙인다.
//4. 시작 코드와 종료수행 코드, 예외 발생시 처리할 코드를 각 블럭에 입력 후, 
// 	수행 여부를 확인한다.
 	
		
	}

}
