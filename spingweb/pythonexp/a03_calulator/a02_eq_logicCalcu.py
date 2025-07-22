# 비교 논리 연산자
# 변수나 데이터를 비교하여 boolean값을 처리하는 경우와 비교연산식 2개 이상으로
# and, or, not등의 논리식을 처리하는 경우를 말한다.
# 점수를 통해 학점을 계산할 때, 80점이상이고 90점 미만일 때, B학점 여부를 출력 
point = 85
isBGrade = point>=80 and point<90
print(f'b학점 여부:{isBGrade}')
# id와 pwd를 입력받아 himan/7777  isLoginSuccess  를 처리하여 결과를 출력하세요..

# id = input("아이디 입력:")
# pwd = input("패스워드 입력:")
# isLoginSuccess = id =='himan' and pwd == '7777'
# print(f"로그인 성공 여부:{isLoginSuccess}")
# 나이를 통해 무료 입장 여부
age = 67
isFree = age<5 or age>=65
print(f'입력된 나이:{age}, 무료입장여부:{isFree}')
# # ex) 국어, 영어 점수를 입력받아 둘 중에 하나라도 80점이상이면 선물을 받기로 한다면 선물 여부를 출력하세요..
# kor = int(input("국어 점수:"))
# eng = int(input("영어 점수:"))
# hasPresent = kor>=80 or eng >= 80
# print(f'국어:{kor}, 영어:{eng}  선물여부:{hasPresent}')
# 나이에 따라 무료입장이 아닌 경우 처리
age = 25
isNotFree = not(age<5 or age>=65)
print(f'입력한 나이:{age}, 무료입장이 아닌 경우:{isNotFree}')
# ex) 점수를 입력받아 point>=70  == > 합격인 경우와 합격이 아닌 경우를 not 논리식으로 처리하여 출력하세요..

# point = int(input("점수를 입력:"))
# print(f'입력한 점수:{point}, 합격여부:{point>=70}, 불합격여부:{not(point>=70)}')
'''
# 파이썬에서 3항 연산자는 조건부 표현식이라고 하면 다음과 같은 기본 형식을 가지고 있다.
1. 형식TRUE일때 결과데이터 if 조건  else False일때 결과데이터
'''
point = 70
result = "합격" if point>=70 else "불합격"
print(f'점수 : {point}, 결과 : {result}')

# ex) age에 따라 18이상이면 성인, 18미만이면 미성년자 출력을 3항 연산자에 의해서 처리하세요..
age = 25
result = "미성년자" if age>=18 else "미성년자"
print(f'입력한 나이:{age}, 결과:{result} ')

'''
# 연산자 우선 순위
1. +, - 같은 순위 먼저/뒤 상관없이 연산 결과 동일
2. *, / 같은 순위 먼저/뒤 상관없이 연산 결과 동일
3. +, -   vs  *, /   *,/는 연산을 뒤에 나오게 하더라도 먼저 계산하고 +, - 계산한다.
4. 최고 우선 순위 연산자 : (), [], {} 등은 연산식에서 가장 먼저 연산이 된다.

'''
print( 4 + 5 * 2)  # *를 먼저 처리 후, 덧셈 처리
print( (4 + 5) * 2) # ()가 최고 우선순위로 먼저 연산을 하고 그 후, *를 처리한다.
# ex) 사과의 갯수와 바나나의 갯수를 입력받아서 각각의 단가가 2000원일 때,  총비용을 출력하세요..
appleCnt = int(input("사과의 갯수:"))
banaCnt = int(input("바나나의 갯수:"))
print(f'사과의 갯수:{appleCnt}, 바나나의 갯수:{banaCnt}, 총비용:{(appleCnt+banaCnt)*2000}')



