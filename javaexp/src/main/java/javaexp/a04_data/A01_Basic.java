package javaexp.a04_data;

public class A01_Basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바의 데이터 유형
		1. 기본데이터 유형
			1) 메모리를 stack영역 하나만 사용/한정된 데이터를 저장
			2) 정수형 데이터
				byte(8bits) : -128~127
				short(2바이트) : -32768~32767
				# int(4바이트) : -2147483648~2147483647(약21억)
				  int no = 5;
				long(8바이트) - 구경정도 범위(경조억...)	
				  long data01 = 3147483647L;  21억이상의 정수형 할당시는 L/l를 붙여서 사용하여야 한다.
			3) 실수형 데이터
				float(4바이트)
				  float data02 = 3.14F;  float도 사용시 F/f를 붙여서 사용하여야 한다.
				#double(8바이트)
				  double data3 = 3.14;
			4) 문자형 데이터
				char(2바이트) : 0~65535(유니코드문자로 1문자 표현)
			5) boolean 데이터
				1비트 : 0/1  true/false 실제메모리는 jvm(자바가상머신)에 따라 다름 
				
		
		2. 객체형데이터 유형
			1) 메모리를 stack영역과 heap영역 두개를 사용
			2) 배열
			3) String
			4) 사용자 정의 class 객체
		
		
		# 자바에서 데이터의 비교
		
		# 자바에서 입력 처리.
		
		 * */
		int intMax = 2147483647;
		long longData = 3147483647L;
		System.out.println("정수형(int)"+intMax);
		System.out.println("정수형(long)"+longData);
		float floatData = 3.14F; // 소숫점 6~7자리까지 가능
		double dblData = 3.14;  // 소숫점 15자리까지 가능
		System.out.println("실수형(float)"+floatData);
		System.out.println("실수형(double)"+dblData);
		// ex1) 위 데이터 중에 long 데이터를 이용해서, 우주여행을 떠나면 우주선의 연료와 여러 비용을
		// 계산합니다. fuelCost 로 우주선의 연료 비용을 150억 할당,  승무원 급여는 10억 할당
		// 하여 총우주여행 비용 totalCost를 출력하세요..
		long fuelCost = 15000000000L;
		int crewSalary = 1000000000;
		long totalCost = fuelCost+crewSalary; // 21억이상은 long 데이터에 할당.
		System.out.println("총 우주여행 비용:"+totalCost);
		// ex) long, double를 활용하여 지구와 달간의 평균 거리를 distanceToMoon(384400000)로
		//    미터단위로 할당하고, 이것을 키로미터단위(/1000.0)로 distanceInKm으로 할당하세요..
		long distanceToMoon = 384400000L;
		double distanceInKm = distanceToMoon/1000.0;
		System.out.println("지구와 달간의 평균거리는 "+distanceInKm+"km 입니다");
		/*
		ex) 기차가 시속 100킬로미터로 이동할 때, 450킬로미터 거리를 이동하는데 걸리는 시간을 계산하세요.
		speed(속도), distance(여행거리), timeInHours(걸리는 시간), timeInMinute(걸리는 분)
		double         long           double                 double
		걸리는 시간 = 여행거리/속도
		걸리는 분 = 걸리는 시간*60
		 * */
		double speed = 100; // speed : 100.0   정수int형 100을 실수메모리 double에 할당
		long distance = 450L; // 걸리가 450 km    450L(long타입표시)
		double timeInHours  = distance/speed;
		System.out.println("걸리는 시간:"+timeInHours+"시간");
		double timeInMinute = timeInHours*60;
		System.out.println("걸리는 분:"+timeInMinute+"분");
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
