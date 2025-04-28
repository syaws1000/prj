package javaexp.a07_loop;

public class A03_1For_If {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 반복문에 조건처리..
		// 1~10까지 출력할 때, 짝수일 때, 빙고 출력..
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt);
			if(cnt%2==0) { // 2로 나누었을 때 0일 경우 즉, 짝수인 경우..
				System.out.print("[빙고]");
			}
			System.out.print(",");
		}
		System.out.println();
		// 5~30까지 출력하되, 3의 배수가 올 때는 황금사탕 발견이라고 출력하게 하세요..
		for(int cnt=5;cnt<=30;cnt++) {
			System.out.print(cnt);
			if(cnt%3==0) {
				System.out.print("[황금사탕발견]");
			}
			System.out.print(",");
		}
		
	}

}
