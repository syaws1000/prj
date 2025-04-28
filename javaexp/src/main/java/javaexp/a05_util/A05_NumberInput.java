package javaexp.a05_util;

import java.util.Scanner;

public class A05_NumberInput {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ex) 구매한 바나나의 갯수 입력, 구매한 오렌지의 갯수 입력   구매한 총 과일의 갯수 @@@
		Scanner sc = new Scanner(System.in);
		System.out.print("구매한 바나나의 갯수 입력:");
		int bananaCnt = sc.nextInt();
		System.out.print("구매한 오렌지의 갯수 입력:");
		int orangeCnt = sc.nextInt();
		int totCnt = bananaCnt + orangeCnt;
		System.out.println("총 과일의 갯수:"+totCnt);
		

	}

}
