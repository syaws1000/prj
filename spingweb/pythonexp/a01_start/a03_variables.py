'''
# 변수란?
1. 데이터를 선언하여 활용하기 위해서 사용하는 개념이다.
2. 데이터에 따라서 바뀌는 수라는 의미를 가지고 있다.
3. 기본형식 : 데이터를 오른쪽에서 대입연산자(=)에 의해서
  왼쪽에 할당된다(오른쪽 ==> 왼쪽)
  변수명 = 데이터
4. 데이터 유형(대분류)
   1) 문자열형
   2) 숫자형
5. 명령처리 형식
   1) 라인별
   2) 한라인에서 두가지 명령을 사용할 때,
      구분자로 ;을 둔다..   

'''
var01 = 100  # 숫자형 데이터 선언..
print('선언된 데이터 내용', var01)
# ex) var02, var03에 데이터를 할당하고, 합산된 값을 var04에 처리하여 위 형식
# 으로 출력해보세요..
var02 = 300; var03 = 400; var04= var02 + var03
print("총합산:", var04)
# 문자열 데이터 할당
# 변수명 = '할당할 문자열데이터'
# 변수명 = "할당할 문자열데이터"
name01 = "홍길동"
name02 = '김길동'
print(name01, name02, '이름 + 처리', name01+name02)
# ex) 물건명, 가격, 갯수를 영문을 변수명을 선언하고, 데이터를 할당한 후 출력하세요
pname = '사과'

price = 3000
cnt = 5
print('물건명:',pname)


print('가격:',price)
print('갯수:',cnt)
print('총액:',price*cnt)



