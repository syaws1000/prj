package javaexp.a07_loop;

public class A05_for_break_continue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# break와 continue 혼합
		1. continue은 해당 스텝만 pass by 하는 것이고, 
			break는 반복문 자체를 중단할 때, 두개을 모두 처리하는 예제의
			경우, 우선 continue를 처리하고, 후에 break가 나오면
			중단 처리하는 것을 말한다.
			
		곰돌이가 사과를 10개를 먹을려고 하는데 3번째 사과와 5번째 사과는
		먹다가 썩어서 버렸고, 8번째사과는 먹다가 배불러서 그만 먹었다고 할때,
		처리하는 반복문를 해보자.	
		 * */
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print("곰돌이가 "+cnt+"번째 사과를 ");
			if(cnt==3|| cnt==5) {
				System.out.println("썩어서 버렸다!");
				continue; // 해당 cnt==3에서 더이상 이후 내용을 수행하지 않고, cnt==4가 수행..
			}
			
			if(cnt==8) {
				System.out.println("배가 불러서 그만 먹다");
				break;
			}
			System.out.println("먹다");
		}
		/*
		# 볼링핀 쓰러뜨리기(continue+break응용)
		10개의 볼링핀 중, 3,6번 핀은 미끄러워 넘어지지 않고, 8번핀은 고정되어 넘어지지 않을 때.
		공을 던지면 3,6번 핀은 건너뛰고 즉 미끄러워 넘어지지 않고를 출력하고, 8번핀은 고정핀! 게임 종료처리
		기본적으로 @@번핀 : 쓰러짐 출력.. 
		 * */
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt+"번 핀:");
			if(cnt==3||cnt==6) {
				System.out.println("미끄러워 넘어지다!!");
				continue;
			}
			if(cnt == 8) {
				System.out.println("고정핀! 게임 종료처리!!");
				break;
			}
			System.out.println("쓰러짐");
		}
		
		
	}

}
