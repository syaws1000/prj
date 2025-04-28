package javaexp.a06_condition;

public class A06_Nested_if {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 중첩 if문
		1. 중첩 if문은 if 블럭 내부에 또 다른 if문을 넣어서
			여러 조건을 순차적으로 검토하는 방식이다.
		2. 첫번째 if 조건이 참일 때만, 그 안에 있는 또 다른 if문을 실행
		3. 이렇게 하면 조건을 계층적으로 처리하거나, 특정 조건을 만족했을 때 추가적인 검사를 수행할 수 있다.
		# 중첩 if문을 사용하는 이유
		1. 복잡한 조건을 단계적으로 검토할 때 유용하다
		2. 외부 조건이 참일 경우에만 내부 조건을 실행하여 논리적인 흐름을 유지할 수 있다.
		3. 특정 범위 안에서만 추가적인 조건을 확인하고자 할 때 사용한다.
		# 기본 형식
		if(조건1){
			if(조건1-1){
				조건1이고 다시 조건1-1일 때 처리할 내용
			}else{
				조건1이고 조건1-1이 아닐 때, 처리할 내용
			}
		}else{
			if(조건2-1){
				조건1이 아니고, 조건2-1일 때, 처리할 내용
			}else{
				조건1이 아니고, 조건2-1이 아닐 때, 처리할 내용
			}
		}* */
		int age = 8; // 나이를 지정
		if(age<=10) {
			
			if(age<=5) {  // 
				System.out.println("추천 메뉴 : 유아동 세트 메뉴");
			}else {   // 5 < age <=10
				System.out.println("추천 메뉴 : 아동용 세트 메뉴");	
			}
			
		}else {
			System.out.println("추천 메뉴 : 일반 메뉴");
		}
		// 입력값을 성별과 나이를 입력받아서 중첩 if 문에 의해서 처리
		// 남자
		//   18이상  : 신사
		//   18미만  : 소년
		// 여자
		//   18이상  : 숙녀
		//   18미만  : 소녀
		// 입력값
		String gender = "여자";
		int age2 = 25;
		System.out.println("입력한 성별:"+gender);
		System.out.println("입력한 나이:"+age2);
		if(gender.equals("남자")) {
			if(age2>=18) {
				System.out.println("신사");
			}else {
				System.out.println("소년");
			}
		}else {
			if(age2>=18) {
				System.out.println("숙녀");
			}else {
				System.out.println("소녀");
			}
			
		}
		/*
		# 놀이 공원 탑승 제한
		사용자의 키(height)와  나이(age3)를 기준으로 놀이기구 탑승여부를 중첩조건문에
		의해 판별하세요
		1. 키가 120cm 미만이면 탑승 불가
		2. 키가 120cm 이상이면
			1) 나이가 13세 미만:보호자 동반 필요
			2) 나이가 13세 이상: 탑승 가능...
		 * */
		// 1. 변수 지정
		int height = 130;
		int age3 = 10;
		System.out.println("입력된 키:"+height+"cm");
		System.out.println("입력된 나이:"+age3+"세");
		// 2. 조건1(키를 기준)
		if(height<120) {
//		    1) 120이상 탑승 불가
			System.out.println("키가 120cm미만이라 탑승불가");
		}else { // 120 이상
	//    2) 조건2(나이를 기준)			
			if(age3<13) {
				// 13세 미만
				System.out.println("보호자 동반 필요");
			}else {
				// 13세 이상
				System.out.println("탑승 가능");
			}
		}
		
		
		
		
		
		
		
		
		
	}

}
