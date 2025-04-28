package javaexp.a08_object;

public class A06_FunctionParam {
	// 매개변수 1개 처리
	static void call1(int no) {  // int no = 25;
		System.out.println("부른 번호는 "+ no);
	}
	// ex) buy()메서드를 통해 구매한 물건의 가격을 입력하게 하여,  
	//     물건을 @@@원에 구매하였습니다.  출력되는 함수 선언후,  호출하세요..
	static void buy(int price) {
		System.out.println("물건을 "+price+"원 구매하였습니다.");
	}
	// 매개변수 2개이상 처리하는 함수 선언..
	static void showScore(String name, int point) {
		System.out.println("학생의 이름은 "+name+"이고, 획득한 점수는 "+point);
	}
	// ex) buyProd()  물건명(String pname), 가격(int price), 갯수(int cnt)를 전달하여
	//      구매한 물건은 @@@이고, 가격은 @@@원, 갯수는 @@개 입니다.
	static void buyProd(String pname, int price, int cnt ) {
		System.out.println("구매한 물건은 "+pname+"이고, 가격은 "+price+"원, 갯수는 "+cnt+"개 입니다.");
	}
	public static void main(String[] args) {
		buyProd("사과",2000,5);
		buyProd("바나나",4000,2);
		buyProd("오렌지",1500,3);
		
		showScore("홍길동", 80);// 선언된 타입과 순서, 갯수에 맞게 전달하여야 한다.
		showScore("마길동", 90);
		showScore("오길동", 100);
		
		
		
		
		
		call1(25);  // 선언된 데이터 유형에 맞게 매개변수로 데이터를 전달
		call1(30);
		call1(50);
		buy(3000);
		buy(4000);
		buy(5000);
		
		
		

	}
}
