package javaexp.a04_data;

public class A04_Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 배열에 대한 기본 이해
		1. 배열이란?
			- 같은 자료의 데이터를 하나의 묶어 저장할 수 있는 연속된 공간
			- 여러 개의 변수를 하나로 관리하고 싶을 때, 사용
			ps) 기차는 하나의 기차에는 여러개의 연결된 호차가 모여 기차를 이루듯이 배열도
				0부터 시작하는 동일한 유형의 데이터를 묶어서 사용한다.
				int [] scores = new int[5];  ==> {0,0,0,0,0}
				int [] scores : int형으로 scores라는 이름을으로 배열 선언;
				new int[5]; int형으로 5개 데이터를 사용가능 하게 할당;
				scores[0]
		2. 배열을 사용하는 이유
			- 코드의 반복을 줄이고 효율적으로 관리할 수 있다.
				위 배열의 경우 변수5개를 쓰야 하는 것을 scores라는 이름을 하나로 사용가능하다.
				int score1;
				int score2;
				int score3;
				==> int [] scores
				
			- 같은 종류의 데이터를 한 번에 처리하기에 적합
				int라는 동일한 배열을 scores라는 이름으로 사용
			- 반복문과 함게 사용하면 편리함
				for문을 활용하면 손쉽게 데이터를 할당하고 호출가능하다..
		3. 배열의 선언과 활용
			- 배열의 선언
				int[] arry;   // int형으로 묶을 데이터변수 arry를 선언한다.
				int arry[];   // int형으로 묶을 데이터변수 arry를 선언한다.
			- 배열의 할당
				arry = new int[5];  // 배열변수에 실제 5개짜리 int를 할당할 수 있게 생성한다.
					int형으로 5개짜리 데이터가 0씩으로 할당 처리.
				선언 + 할당
				int[] arr2 = new int[3]; // 배열의 선언과 할당을 동시에 한다.
					int형으로 5개짜리 데이터가 0씩으로 할당 처리.			
				arry[0] = 25;
				arry[1] = 15;
				arry[2] = 55;
				arry[3] = 75;
				arry[4] = 55;
				// 배열은 0부터 시작하는 index번호로 구분하여 할당할 수 있다.
			- 배열의 활용
				System.out.println(arry[0]); 할당된 변수를 호출 할 수 있다.
				System.out.println(arry[1]); 할당된 변수를 호출 할 수 있다.
				System.out.println(arry[2]); 할당된 변수를 호출 할 수 있다.
				arry.length : 배열의 크기를 가져올 수 있다. 5개가 할당하였으므로 5를 호출
			- 배열의 선언과 할당.
				double []arr3 = {70.5, 20.5,40.5};
				// 배열은 위와 같은 형식으로 선언과 할당을 동시에 할 수 있다.
				boolean []arr4 = new boolean[3];
					arr4[0] 부터 arry4[2] ==> false 가 할당.
				char []arr5 = new char[3];
					arr5[0] 부터 arr5[2] ==> '' 가 할당.
		 * */
		// int 형 배열의 선언
		int []arr1;
		int arr2[];
		boolean arr3[];
		char arr4[];
		double arr5[];
		System.out.println("배열 선언!!");
		// ex) arr6(double), arr7(int), arr8(boolean)로 배열을 선언해보세요..
		double arr6[];
		int arr7[];
		boolean []arr8;
		// 배열의 할당.
		arr1 = new int[3]; //정수형 데이터가 0으로 3개를 할당..
		arr3 = new boolean[2]; // boolean 데이터 false로 2개 할당.
		System.out.println(arr1[0]);
		System.out.println(arr1[1]);
		System.out.println(arr1[2]);
		System.out.println(arr3[0]);
		System.out.println(arr3[1]);
		arr5 = new double[3];
		System.out.println(arr5[0]);
		System.out.println(arr5[1]);
		System.out.println(arr5[2]);
		// ex) arr11(int[]-2), arr12(double[]-3), arr13(boolean[]-5)
		//    위 형식으로 선언과 초기 할당을 하고, 출력해보세요(index로 접근)
		// 선언
		int [] arr11;
		// 할당
		arr11 = new int[2];
		// 선언/할당
		double [] arr12 = new double[3];
		// 선언/할당
		boolean [] arr13 = new boolean[5];
		System.out.println(arr11[0]);
		System.out.println(arr11[1]);
		System.out.println(arr12[0]);
		System.out.println(arr12[1]);
		System.out.println(arr12[2]);
		System.out.println(arr13[0]);
		System.out.println(arr13[1]);
		System.out.println(arr13[2]);
		System.out.println(arr13[3]);
		System.out.println(arr13[4]);
		
		
		
		
		
		
		
		

	}

}
