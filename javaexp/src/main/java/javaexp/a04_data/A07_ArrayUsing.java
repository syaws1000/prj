package javaexp.a04_data;

public class A07_ArrayUsing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 배열
1. 같은 데이터 타입를 가진 여러 개의 값을 하나의 변수에 저장할 수 있는 자료 구조입니다.
	배열은 순차적으로 정렬된 메모리 공간에 여러 값을 저장하며, 배열을 사용하면 여러 개의
	데이터를 효율적으로 다룰 수 있습니다. 비열은 크기를 고정하여 선언하며, 한번 크기를 
	설정하면 그 크기를 변경할 수 없습니다. 배열의 각 요소는 인덱스를 통해 접근 할 수 있습니다.
	인덱스는 0 부터 시작하여 배열 내 각 요소의 위치를 나타냅니다.
2. 배열을 사용하는 이유는 여러 개의 값을 하나의 이름으로 묶어 처리할 수 있기 때문입니다.
	예를들어, 여러 학생들의 점수를 저장하거나, 여러 개의 색상을 관리하는 등의 상황에서
	유용하게 사용된다.
3. 배열의 기본 구조
	1) 선언 및 초기화 : 배열을 사용하기 위해서 배열을 먼저 선언하고 초기화해야 합니다.
		배열 선언 시 크기를 지정하고, 각 요소에 값을 할다합니다.
	2) 배열 인덱스 : 배열의 각 값을 0부터 시작하는 인덱스로 접근합니다.
	3) 배열 크기 : 배열의 크기는 선언 시 정해지며, 배열을 생성한 후에는 크기를 변경할 수 없습니다.
	
*/
		int scores[] = new int[3]; // 배열의 선언  데이터유형 변수명[] = new 데이터유형[배열의크기]
		scores[0] = 70; // 배열의 index 값 0부터
		scores[1] = 80;
		scores[2] = 90;
		System.out.println("배열의 크기:"+scores.length);
		String [] names = {"홍길동","김길동","신길동"};
		System.out.println(names[0]);
		System.out.println(names[1]);
		System.out.println(names[2]);
		System.out.println("번호\t이름\t점수");
		for(int idx=0;idx<scores.length;idx++) {
			System.out.print(idx+1+"\t");
			System.out.print(names[idx]+"\t");
			System.out.print(scores[idx]+"\n");
		}
		// ex) 물건가격 배열로 첫번째 형식으로 선언하고 할당, 물건명을 두번째 형식으로 선언하고 할당하고,
		//    위 for문을 이용해서 번호 물건명 가격을 출력하세요..
		// 데이터유형 [] 배열명 = new 데이터유형[배열크기];
		int [] prices = new int[3];
		// 배열명[index번호 0부터] = 데이터;
		prices[0] = 70;
		prices[1] = 90;
		prices[2] = 80;
		System.out.println("가격배열의 크기:"+prices.length);
		// 유형 [] 배열명 = {데이터1, 데이터2, 데이터 3}
		String [] products = {"사과","바나나","딸기"};
		System.out.println("#물건정보#");
		// for int idx=0 : 반복문의 초기값
		//     idx<prices.length;  반복문의 한계..  idx<3  : 2까지..
		//     idx++ : 증가처리..
		for(int idx=0;idx<prices.length;idx++) {
			System.out.print(idx+1+"\t");
			System.out.print(products[idx]+"\t"); 
			System.out.print(prices[idx]+"\n"); 
			// products[0]products[1]products[2]
		}
		
		
		
		

		
		
		
		
		
		
		
		
		
	}

}
