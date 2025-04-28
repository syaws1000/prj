package javaexp.a04_data;

public class A02_1_Char {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int codeVal = 65;
		char c01 = (char)codeVal;
		System.out.println(c01);
		char c02 = 'B'; // 문자한자 선언..
		int code2Val = c02;
		System.out.println(code2Val);
		char [] arr = {'h','e','l','l','o'};
		String str1 = new String(arr);
		// char[] ==> String
		System.out.println("char[] ==> String :"+str1);
	}

}
