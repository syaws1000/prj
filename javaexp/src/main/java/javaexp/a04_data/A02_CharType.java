package javaexp.a04_data;

public class A02_CharType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		1. bit
			0/1 
			컴퓨터가 인식할수 있는 숫자 2진수(켜졌느냐 꺼졌느냐)
			1   
			10 ==> 2
			11 ==> 3
		   100 ==> 4
		2. byte(bit가 8개 모여) 문자를 만드는 기초가 된다.
			10 => 2
		3. char
			
		
		
			int <==> char
			65  <==> 'A'
			66  <==> 'B'
		4. char[]
			{'h','e','l','l','o'}
		5. String
			"hello"
		
		
		
		
		
		
		# 문자열데이터는 어디서부터 생겨났을까?
		1. char 코드 값
		   65 ==> 'A'
		   66 ==> 'B'
		2. char [] arr = {'h','e','l','l','o'};
			char 배열 선언..
		3. 위 내용을 문자열이라는 데이터 타입으로 설정 처리
			String str1 = "hello";
		 * */
		System.out.println("65의 문자:"+(char)65);
		char[] arr = {'h','e','l','l','o'};
		String str1 = "hello";
		for(int cnt=1 ; cnt<=256 ; cnt++) {
			System.out.println(cnt+"\t"+(char)cnt);
		}
		char ch01 = 'A';
		System.out.println("문자 데이터:"+ch01);
		// 각 문자는 코드값을 가지고 있어서 int로 casting 형변환 하면 해당 고유값을 가지고 있다.
		int codeVal = (int)ch01;
		System.out.println(ch01+"의 코드값:"+codeVal);
		// 반대로 숫자의 문자값을 확인할 때도 casting해서 확인한다.
		int codeVal2 = 80;
		char ch02 =(char)codeVal2;
		System.out.println(codeVal2+"의 문자값:"+ch02);
		// ex) 문자 'b'를 변수에 할당하고, 출력 후, 여기에 해당 하는 코드값을 int로 할당해서 출력하세요..
		char ch03 = 'b';
		System.out.println("문자:"+ch03);
		int codeVal3 = (int)ch03;
		System.out.println(ch03+"의 코드값:"+codeVal3);
		// ex) 숫자 100의 변수에 할당하고 여기에 해당 하문 문자값을 char로 할당해서 출력하세요.
		int codeVal4 = 100;
		char ch04 = (char)codeVal4;
		System.out.println(codeVal4+"의 문자값:"+ch04);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
