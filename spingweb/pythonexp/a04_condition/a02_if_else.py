'''
# if else 구문
1. 참일때와 거짓일 때를 나누어서 처리하는 구문에서 사용된다.
2. 기본 형식
    if 조건식:
        문장1
    else :
        문장2
    - 조건식(비교연산자, 논리연산자)를 사용하여, True이면 문장1이 처리되고,
        False이면 문장2가 처리될 때, 사용한다.
'''
# 임의의 정수를 입력받아서 60점이상이면 합격 그외는 불합격 처리
import random as r  # 내장된 모듈 사용 import 사용할모듈명 as 변수명
point = r.randrange(101) # 0~100 사이 경우수 101가지 인경우 처리할 내용
print(f'점수:{point}')
if point>= 60:
    print('합격')
else:
    print("불합격")

# ex) 0, 1이 임의로 나오게 하고, 0은 짝수, 1은 홀수로 나뉘어 임의의 수에 따라서
#    출력되게 하세요..
ranIdx = r.randrange(2) # 0~1 두가지 경우수인 경우 처리 내용
print(f'랜덤 index 번호 {ranIdx}')
if ranIdx==0:
    print('짝수')
else:
    print('홀수')    