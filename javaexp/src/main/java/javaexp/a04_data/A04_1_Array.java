package javaexp.a04_data;

public class A04_1_Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [] arr1; // 배열의 선언
		arr1 = new int[3]; // 초기값0으로 한 배열 할당.
		System.out.println( arr1[0] );
		arr1[1] = 30;
		System.out.println( arr1[1] );
		int [] arr2 = {30,50,40};
		System.out.println("첫번째 데이터:"+arr2[0]);
		System.out.println("마지막 데이터:"+arr2[2]);
		// 배열은 index번호는 0부터시작해서 크기보다 -1작은 번호까지 처리된다.
		// 배열명.length : 배열의 크기를 나타내는 키워드..
		System.out.println("배열의 크기:"+arr2.length);
		
	}

}
