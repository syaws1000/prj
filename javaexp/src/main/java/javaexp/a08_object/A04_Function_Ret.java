package javaexp.a08_object;

public class A04_Function_Ret {
	/*
	# 리턴타입
	리턴유형 함수명(){
		return 실제리턴할데이터;
	}
	 * */
	static int f1() {
		return 5;
	}
	static int f2() {
		int no = 7;
		return no;
	}	
	static int f3() {
		int no = (int)(Math.random()*6+1);
		return no;
	}	
	static String f4() {
		int no = (int)(Math.random()*6+1);
		return no%2==0?"짝":"홀";
	}	
	
	public static void main(String[] args) {
		System.out.println(f3());
		System.out.println(f3());
		System.out.println(f3());
		System.out.println(f4());
		System.out.println(f4());
		System.out.println(f4());
		
		
		// TODO Auto-generated method stub
		System.out.println(f1());
		int r1 = f1();
		System.out.println("할당된 변수:"+r1);
	}
}

