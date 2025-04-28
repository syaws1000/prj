package javaexp.a07_loop;

public class A04_for_break_continue {

	public static void main(String[] args) {
		/*	
		# break와 continue
		1. break와 continue는 일반적으로 for문 뿐만아니라 반복문에서 주로
			사용되는 명령문이다.
		2. break는 남은 반복수행 내용 상관없이 중단을 처리하고,
		3. continue는 현재 반복스텝단계에서 반복문이 끝나는 블럭까지만 진행을
			중지하고 다음 스텝의 반복을 수행시켜주는 것을 처리한다.
		4. 기본형식
			for(;;){
				if(조건){
					break; // for문 반복자체를 중단시켜준다.
				}
			}
			for(int cnt=1;cnt<=10;cnt++){
				if(cnt==5){
					continue; // cnt가 5일 때, 그 이후 라인코드를 수행시키지 않고, cnt 6의 내용을 수행 
				}
				// 출력/처리할 내용..
			}
		*/
		int grade= 3;
		System.out.println("# break 처리 #");
		for(int cnt=1;cnt<=9;cnt++) {
			if(cnt == 5) {
				break;
			}
			System.out.println(grade+" x "+cnt+" = "+(grade*cnt));
		}
		System.out.println("# continue #");
		for(int cnt=1;cnt<=9;cnt++) {
			if(cnt == 5) {
				continue;
			}
			System.out.println(grade+" x "+cnt+" = "+(grade*cnt));
		}		
		// ex1) 숨은 보물찾기(break연습)
		// 보물 1~10 중 5번 상자에 숨겨져 있다.
		// 1번부터 상자를 열면서 확인하다가 보물은 찾으면 즉시 멈추고 보물 발견! 종료합니다. 출력
		// 상자를 확인할 때, 1번상자 확인중. 이라고 출력하게 하세요..
		System.out.println("# 숨은 보물 찾기 #");
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.println(cnt+"번 상자 확인중!");
			if(cnt==5) {
				System.out.println("보물 발견! 종료합니다.");
				break;
			}
		}
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt+"번 사탕");
			if(cnt==3||cnt==7) {
				System.out.println("썩어서 pass");
				continue;
			}
			System.out.println("맛있다");
		}		
		// ex2) 사탕 훔치기 게임(continue연습)
		// 철수는 사탕 10개 중에 썩은 사탕(3번, 7번)을 피해서 맛있는 사탕만 먹고 싶어요
		// 사탕을 하나씩 확인하면, 썩은 사탕은 먹지 않고 건터뛰고, 나머지는 맛있다 출력 하세요..
		// 1번 사탕 : 맛있다.
		// 2번 사탕 : 맛있다.
		// 3번 사탕 : 썩어서 pass
		// 4번 사탕 : 맛있다..
		//  ...

		
		
		
		
		
		
		
		
	}

}
