package javaexp.a02_var;

public class A08_DeclareExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//int 1number;   // 숫자로 시작하면 에러 발생 number1
		int number1;
		int _age;      // _,$는 특수문자이지만 변수 허용
		//int class;     // 내장된 키워드이기에 에러 발생..
		int class01;
		int userName;  // 시작소문자로 적절함  
		int UserName;  // 변수명은 소문자로 시작(권고사항-가독성으로)
//		int void;        // (예약어 사용 금지)
		int void01;
//		int 9count;      // (숫자로 시작 금지)
		int count9;
		
//		int first name;  // (공백 사용 불가)
		int firstName;
		int first_name;
/*
다음은 **변수명 선언 규칙**을 재미있게 연습할 수 있는 실습 문제 5가지입니다! 😊  

### ✅ **실습 문제 1 — 잘못된 변수 찾기**  
아래 변수 선언 중 잘못된 것을 찾고, 이유를 주석으로 적어보세요!  
```java
int 1number;   // 숫자로 시작하면 에러 발생 number1     
int _age;      // _,$는 특수문자이지만 변수 허용
int class;     // 내장된 키워드이기에 에러 발생..  
int userName;  // 시작소문자로 적절함  
int UserName;  // 변수명은 소문자로 시작(권고사항-가독성으로)
```

---

### ✅ **실습 문제 2 — 대소문자 구분 연습**  
아래 코드의 출력 결과가 무엇일지 생각해보고, 왜 그런지 설명해보세요!  
```java
int apple = 10;
int Apple = 20;
System.out.println(apple);  
System.out.println(Apple);
```
위 내용을 에러없이 출력 된다. 변수가 대소문자를 구분하기 때문이다.
그러나, 가독성 문제개 발생함으로 Apple ==> apple01  시작문자을 소문자로 시작할 것을 권고한다.
---

### ✅ **실습 문제 3 — 올바른 변수 이름으로 고쳐쓰기**  
다음 잘못된 변수 선언을 올바르게 수정해보세요.  
```java
int void;        // (예약어 사용 금지)
int 9count;      // (숫자로 시작 금지)
int first name;  // (공백 사용 불가)
```

---

### ✅ **실습 문제 4 — 내가 만드는 변수 이름 퀴즈**  
다음 조건에 맞게 스스로 변수명을 만들어 선언해보세요!  
1. 내 나이를 저장할 변수
   int myAge;
2. 나의 키(cm)를 저장할 변수
   double myHeight;
3. 좋아하는 음식 이름을 저장할 변수
   String favoriteFood;
4. 오늘의 날씨 상태를 저장할 변수 (boolean)
   boolean todayWeather;

---

### ✅ **실습 문제 5 — 클래스명과 변수명 구분 연습**  
아래 보기 중 클래스 이름으로 적합한 것과 변수 이름으로 적합한 것을 구분해보세요.  
```
1) Animal   클래스명	  
2) studentAge   변수명
3) House      클래스명
4) maxValue   변수명
5) Circle      클래스명
6) total_count  변수명
```
> 👉 정리해서 **클래스 이름 목록**과 **변수 이름 목록**으로 나눠 적어보세요!


 * */
	}

}
