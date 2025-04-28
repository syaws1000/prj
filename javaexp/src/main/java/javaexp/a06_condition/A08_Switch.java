package javaexp.a06_condition;

import java.util.Scanner;

public class A08_Switch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# switch 문
		1. switch문은 변수의 값에 따라 실행할 코드 블럭을 선택할 수 있는 조건문이다.
		2. if else 문과 비슷하지만, 특정값이나 표현식의 결과에 따라 분기처리가 필요할 때, 더
			간격하고 가독성이 높다.
		3. 비교하려는 값이 여러 개일 경우, switch문은 코드 작성과 유지보수를 더 쉽게 한다.
		4. 각 case는 고유한 값(상수)과 비교하여, 일치하는 case의 코드가 실행된다.
		5. break 키워드를 사용하여 해당 블록 실행 후 탈출하여, default 블록은 어떤 case와도
			일치하지 않을 때 실행된다.
		6. 기본 형식
			switch(변수){
				case 값1:
					// 변수가 값1일 때 실행할 코드
					break;
				case 값2:
					// 값2일 때 실행할 코드
					break;
				// 필요에 따라 추가 case 작성	
				default:
					//해당 값이 없을 때, 실행할 코드
			}
		*/
		int day = 3;
		switch(day) {
			case 1:
				System.out.println("월요일");
				break;
			case 2:
				System.out.println("화요일");
				break;
			case 3:
				System.out.println("수요일");
				break;
			default:
				System.out.println("목, 금, 토, 일요일!!");
		}// ex) 변수로 chno(3) 사지선다 문제에서 선택하여
		//  case 1:  오답 출력
		//  case 2:  오답 출력 
		//  case 3:  정답 출력
		//  case 4:  오답 출력 
		//  default: 번호는 1~4번까지만 입력가능합니다.
		int chno = (int)(Math.random()*6+1); // 1~6
		System.out.println("선택된 번호:"+chno);
		switch(chno) {
			case 1:
				System.out.println("오답");
				break;
			case 2:
				System.out.println("오답");
				break;
			case 3:
				System.out.println("정답");
				break;
			case 4:
				System.out.println("오답");
				break;
			default :
				System.out.println("번호는 1~4번까지만 입력가능합니다.");
		}
		switch(chno) {    // String str = ""
			case 1:       // 	case "선택1" :
			case 2:
			case 4:
				System.out.println("오답");
				break;			
			case 3:
				System.out.println("정답");
				break;
			default :
				System.out.println("번호는 1~4번까지만 입력가능합니다.");
		}
		// break를 만나가 전까지는 계속 수행되기에 동일한 처리를 할때는 break를 생략해서 처리한다.
		// break문은 case문을 벗어나게 처리해주는 것이다.
		/* 월은 String/int 할당
		ex) 월을 입력/할당해서  1~12.
		    12, 1, 2 ==> 겨울
		    3, 4, 5 ==> 봄
		    6, 7, 8 ==> 여름
		    9, 10, 11 ==> 가을
		    그외는 월은 1~12까지 입니다. 
		 */
		Scanner sc = new Scanner(System.in);
		System.out.print("월을 입력하세요(1~12):");
		String month = sc.nextLine();
		System.out.println("입력한 데이터:"+month);
		switch(month) {
			case "12":
			case "1":
			case "2":
				System.out.println("겨울 입니다.");
				break;
			case "3":
			case "4":
			case "5":
				System.out.println("봄 입니다.");
				break;
			case "6":	
			case "7":	
			case "8":
				System.out.println("여름 입니다.");
				break;
			case "9":	
			case "10":	
			case "11":
				System.out.println("가을 입니다.");
				break;
			default:
				System.out.println("월 1~12월까지 입력 가능합니다.");
		}
	}

}
