'''
# 파이썬에서 사용되는 내장 모듈은 다양한 작업을 간편하게 처리할 수 있게 합니다.
1. math 모듈 - 수학적 함수
   math 모듈은 수학적 연산을 위한 다양한 함수들을 제공합니다.
'''
import math  # 내장된 모듈 사용시 선언
num = 25
# 제곱근 계산
sqrt = math.sqrt(num)
print(f"{num}의 제곱근은 {sqrt}")
# 패토리얼
print(f'{5}의 패코리얼 {math.factorial(5)}')
'''
2. random 모듈 - 난수를 생성하거나 임의의 값을 선택할 때, 사용
'''
import random
# 1~10 사이의 임의의 정수
rand_int = random.randint(1, 10)
print(f'임의의 정수:{rand_int}')
# 리스트(배열)에서 임의의 항목 선택
items = ['사과', '바나나', '딸기', '오렌지']
rand_item = random.choice(items)
print(f'선택한 임의의 과일은 {rand_item}')
# 리스트 항목 섞기
cards = ['♠A','♠2','♠3','♠4','♠5','♠6','♠7','♠8','♠9','♠10','♠J','♠Q','♠K']
random.shuffle(cards)
print(f'섞인 카드 : {cards}')
# ex) 1~6 주사위 두 개를 돌려서 선택된 숫자를 출력
#     가위 바위 보 중에 임의로 선택해서 출력
#     빨강색구슬 2개, 파랑색구슬 3개, 노랑색구슬 2개의   임의로 섞어서 출력되게 처리하세요.



