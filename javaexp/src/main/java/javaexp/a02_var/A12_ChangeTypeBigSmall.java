package javaexp.a02_var;

public class A12_ChangeTypeBigSmall {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 작은데이터 유형에서 큰 데이터 유형 할당(promote)
		int num01 = 25;
		double num02 = num01;
		System.out.println("promote 후 데이터:"+num02);
		double num03 = 3.14;
//		int num04 = num03;  에러발생
		int num05 = (int)num03;  // 명시적으로 casting 하여야 한다.
		System.out.println("cast 후 데이터:"+num05);
		/*
		ex) 정수형으로 num11에 50을 할당 후, 실수형 num12에 할당하고, 출력하고,
		    실수형으로 num13에 79.5를 할당 후, 정수형 num14에 할당(casting처리)하여 출력하세요		    
		 * */
		int num11 = 50;
		double num12 = num11;
		System.out.println("promote가 일어나 데이터:"+num12);
		double num13 = 79.5;
		int num14 = (int)num13;
		System.out.println("casting이 일어난 데이터:"+num14);
		
		
		
	}

}
