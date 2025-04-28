package javaexp.a03_calcu;

public class A02_Incre_Decre {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 증감연산자.
		1. 변수를 증가할 때, 사용하는 연산자를 말한다.
		2. 종류
			1) 단항(하나의 변수로 증가/감소처리 연산자)
				++, --
			2) 이항(여러 개의 연산자로 증가/감소처리)
			 	변수 = 변수 + 증가데이터
			3) 복합
			 	변수 += 증가데이터
			 	
		*/
		int no = 1;
		// ++no : 증가후 처리
		// no++ : 처리후 증가
		System.out.println(no++); // 하나씩 증가되는 데이터처리
		System.out.println(no++);
		System.out.println(no++);
		System.out.println(no++);
		System.out.println(no++);
		System.out.println(no--);
		System.out.println(no--);
		System.out.println(no--);
		System.out.println(no--);
		System.out.println(no--);
		System.out.println(no--);
		// ex1) 카운트업 처리를 1부터 10까지 위 연산자로 처리 해보세요 변수명은 cnt
		//     1 2 3 4 ... 10~~
		int cnt = 1;
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		System.out.println(cnt++);
		
		// ex2) 카운트 다운으로 10부터 0까지 처리해보세요 변수명은 count
		//     10 9 8 7 ... 0
		int count = 10;
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		System.out.println(count--);
		
		
		
		
		
		

	}

}
