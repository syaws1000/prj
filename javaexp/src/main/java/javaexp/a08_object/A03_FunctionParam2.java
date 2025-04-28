package javaexp.a08_object;

public class A03_FunctionParam2 {
	
	// 여러가지 매개변수와 이에 따른 처리..
	// 과목, 점수1, 점수2, 평균
	static void f1(String s, int p1, int p2) {
		System.out.println("과목명:"+s);
		System.out.println("중간:"+p1);
		System.out.println("기말:"+p2);
		int avg = (p1+p2)/2;
		System.out.println("최종점수(평균):"+avg);
	}
	//ex1단계) f2 직사각형의 밑면과 높이를 매개변수로 받아서 면적을 출력하세요..
	static void f2(int b, int h) {
		System.out.println("# 직사각형의 면적 구하기 #");
		System.out.println("밑면:"+b);
		System.out.println("높이:"+h);
		System.out.println("면적:"+(b*h));
	}
	//ex) f4  구매가격과 구매 갯수를 입력받아 총비용 출력..
	static void f4(int p, int c) {
		System.out.println("# 구매 정보 #");
		System.out.println("구매가격:"+p);
		System.out.println("구매갯수:"+c);
		System.out.println("총비용:"+(p*c));
	}
	//ex2단계) f3 물건명과 가격, 갯수, 할인율입력받아서 최종 금액까지 출력..
	public static void main(String[] args) {
		f4(3000,2);
		f4(4000,3);
		f4(2000,4);
		f2(100,20);
		f2(20,40);
		
		
		f1("국어",70,80);
		f1("영어",80,90);
	}

}
