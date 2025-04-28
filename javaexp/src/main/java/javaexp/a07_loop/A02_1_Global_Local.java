package javaexp.a07_loop;

public class A02_1_Global_Local {
	int no;
	String str;
	
	void call(int no5) {
		int no2;
	}
	void call2() {
		System.out.println(no);
		//System.out.println(no5);
		//System.out.println(no2);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 전역변수
		int no = 30;
		if(no>=20) {
			//지역변수
			int no2 = 40;
		}
		System.out.println(no);
		// 외부에서는 지역변수를 사용할 수 없다.
//		System.out.println(no2);
	}

}
