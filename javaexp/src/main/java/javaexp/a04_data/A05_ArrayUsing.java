package javaexp.a04_data;

public class A05_ArrayUsing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 배열의 활용
		1. 배열은 초기값을 설정된 후에 index로 접근하여 변경을 할 수 있다.
		2. 배열의 선언과 초기값 할당
			int arr[] = new int[3];
		3. 배열의 속성 활용
			1) 배열의 크기 가져오기.
				arr.length : 현재 배열의 크기를 가져온다. 3
			2) 배열의 각 데이터 가져오기(배열의 초기값 가져오기)
				System.out.println(arr[0]);
				System.out.println(arr[1]);
				System.out.println(arr[2]);
			3) 각 배열을 index로 접근하여 새로운 값 할당하기
				arr[0] = 30;
				arr[1] = 40;
				arr[2] = 50;
		4. 배열의 초기화와 임의의 데이터 입력하기
			double arr2[] = {75.7, 25.5, 40.7};
			이 형식으로 배열에 초기값이 아닌 데이터를 할당할 수 있다.
			int []arr3;
			// 주의) 선언 후, 따로 변수를 이용해서 할당할려면 반드시 new int[]선언하고 {} 할당하여야 한다.
			arr3 = new int[]{40,50,60};
		 * */
		int [] arr1 = new int[3];
		arr1[0] = 70;
		arr1[1] = 80;
		arr1[2] = 90;
		System.out.println(arr1[0]);
		System.out.println(arr1[1]);
		System.out.println(arr1[2]);
		System.out.println("배열의 길이:"+arr1.length);
		// ex) arr2로 int형 배열 5개를 선언하여 구매한물건의 가격5개를 1000, 2000, 3000, 4000, 5000
		//    을 각각 할당하고, 출력해보세요..
		int []arr2 = new int[5];
		arr2[0] = 1000;
		arr2[1] = 2000;
		arr2[2] = 3000;
		arr2[3] = 4000;
		arr2[4] = 5000;
		System.out.println(arr2[0]);
		System.out.println(arr2[1]);
		System.out.println(arr2[2]);
		System.out.println(arr2[3]);
		System.out.println(arr2[4]);
		System.out.println("배열의 크기:"+arr2.length);
		// 선언과 할당.
		char []arr3 = {'H','e','l','l','o'};
		System.out.println(arr3[0]);
		System.out.println(arr3[1]);
		System.out.println(arr3[2]);
		System.out.println(arr3[3]);
		System.out.println(arr3[4]);
		double []arr4;
		arr4 = new double[] {70.5,20.4,30.7};
		System.out.println(arr4[0]);
		System.out.println(arr4[1]);
		System.out.println(arr4[2]);
		/*
		ex) arr5로 char[]로 'g' 'o' 'o' 'd'  'd' 'a' 'y' 를 선언할당(동시)으로 처리 후 출력
			arr6로 boolean[]  true, false, false로  선언 후, 할당으로 처리 후 출력..
		 * */
		char [] arr5 = {'g','o','o','d',' ', 'd','a','y'};
		boolean [] arr6;
		arr6 = new boolean[] {true,false,false};
		System.out.print(arr5[0]);
		System.out.print(arr5[1]);
		System.out.print(arr5[2]);
		System.out.print(arr5[3]);
		System.out.print(arr5[4]);
		System.out.print(arr5[5]);
		System.out.print(arr5[6]);
		System.out.println(arr5[7]);
		System.out.println(arr6[0]);
		System.out.println(arr6[1]);
		System.out.println(arr6[2]);
		System.out.println(arr5[0]+arr5[1]+arr5[2]); // int형으로 변환되어 합산 처리..
		// "A" + "B" 문자열일 경우 이어주는데
		// 'A' + 'B' 문자이기에 해당 문자의 코드값으로 숫자로 연산이 된다.(주의)
		
		
		
		
		
		
		
		
		
		
	}

}
