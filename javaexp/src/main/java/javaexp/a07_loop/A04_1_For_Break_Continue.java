package javaexp.a07_loop;

public class A04_1_For_Break_Continue {

	public static void main(String[] args) {
		int grade = (int)(Math.random()*18+2);// 임의의 2~19단 사이
		for(int cnt=1;cnt<=9;cnt++) {
			if(cnt==3) { // 3 step이후 내용이 수행하지 않고, 다름 step으로 넘어간다..
				
				continue;
			}
			if(cnt==7) {
				
				break;  // 해당 내용을 더 이상 수행하지 않음..
			}
			System.out.println(grade+"x"+cnt+"="+(grade*cnt));
		}
		// ex1) 1~10개 초코렛 먹기..     @@번째 초코렛을 먹었습니다.
		//      continue를 이용해서 5번째 초코렛을 이상한 맛어서 패스합니다. 출력..
		//      8번째 초코렛에서는 너무 많어서 그만 먹습니다. 출력..
		for(int cnt=1;cnt<=10;cnt++) {
			if(cnt==5) {
				System.out.println(cnt+"번째 초코렛은 이상만 맛이어서 패스합니다.");
				// 출력하고 이후에 pass by
				continue;
			}
			if(cnt==8) {
				System.out.println(cnt+"번째 초코렛에서는 너무 많어서 그만 먹습니다.");
				break;
			}
			System.out.println(cnt+"번째 초코렛을 먹었습니다!!");
		}
		
		
		
		
		
		
		
	}
}
