package javaexp.a03_calcu;

public class A04_Incre_decre3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 대입증감연산자 처리
		1. 앞에서 변수의 증가를 위해서 사용한 식을 공통된 변수를 생략해서 처리하는 것을 말한다.
		2. int no = 1;
		   no = no + 2;
		   System.out.println(no); //변수 no에 3이 할당 처리
		   위 식에서 변수 no를 중첩적으로 사용하는 것을 간단히 처리한 +=를 사용하여
		   no +=2;  ==> no = no + 2; 와 동일
		   System.out.println(no); 변수 no에 5가 할당 된 것을 확인 할 수 있다.
		   no +=5;  ==> no = no + 5; 와 동일
		   System.out.println(no); 변수 no에 10이 할당 된 것을 확인 할 수 있다.
		 * */
		int no = 1;
		no = no + 2;
		System.out.println("변수 no:" + no);
		no +=2;
		System.out.println("변수 no:" + no);
		no +=5;
		System.out.println("변수 no:" + no);
		System.out.println("변수 no:" + (no+=5)); // 증가된 내용을 확인 가능.
		System.out.println("변수 no:" + (no+=5));
		System.out.println("변수 no:" + (no+=5));
		// ex) 변수 appleCnt에 초기값을 1000을 할당한 후, 위 증감대입연산자를 100씩 할당한 내용을
		//     3번 호출하고 출력하세요..
		int appleCnt = 1000;
		appleCnt+=100;
		System.out.println("사과의 현재 갯수:"+appleCnt);
		System.out.println("사과의 현재 갯수:"+(appleCnt+=100));
		System.out.println("사과의 현재 갯수:"+(appleCnt+=100));
		// ex) 변수 kimBapPrice 초기값을 3500을 할당한 후, 증감대입연산자로 1500씩 할당된 내용을
		//   5번 호출하여 출력하세요..
		int kimBapPrice = 3500;
		kimBapPrice = kimBapPrice+1500; // 5000
		System.out.println("김밥의 가격:"+kimBapPrice);
		kimBapPrice += 1500; // 6500
		System.out.println("김밥의 가격:"+kimBapPrice);
		System.out.println("김밥의 가격:"+(kimBapPrice+=1500));
		System.out.println("김밥의 가격:"+(kimBapPrice+=1500));
		System.out.println("김밥의 가격:"+(kimBapPrice+=1500));
		System.out.println("김밥의 가격:"+(kimBapPrice+=1500));
		
		int cntDown = 100;
		cntDown = cntDown - 2;
		System.out.println("감소 처리:"+cntDown);
		cntDown -= 2; // 감소
		System.out.println("감소 처리:"+cntDown); // 감소된 변수 출력
		System.out.println("감소 처리:"+(cntDown-=2));// 감소 + 출력
		System.out.println("감소 처리:"+(cntDown-=2));
		System.out.println("감소 처리:"+(cntDown-=2));
		System.out.println("감소 처리:"+(cntDown-=2));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
