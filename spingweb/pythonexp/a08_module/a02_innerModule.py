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
dice1 = random.randint(1,6)
dice2 = random.randint(1,6)
print(f"첫번째 주사위:{dice1}, 두번째 주사위:{dice2}, 합산:{dice1 + dice2}")
#     가위 바위 보 중에 임의로 선택해서 출력
games = ['가위','바위','보']
rand_games = random.choice(games)
print(f'가위! 바위! 보!  : {rand_games}')
#     빨강색구슬 2개, 파랑색구슬 3개, 노랑색구슬 2개의   임의로 섞어서 출력되게 처리하세요.
mavels = ['빨강색구슬','빨강색구슬','파랑색구슬','파랑색구슬','파랑색구슬','노랑색구슬','노랑색구슬']
random.shuffle(mavels)
print(f"섞인 구슬:{mavels}")
'''
# datetime 모듈 : 날짜와 시간 처리
1. 일반적으로 파이썬에 사용된느 날짜와 시간을 처리하는 모듈
'''
import datetime
# 현재 날짜와 시간
now = datetime.datetime.now()
print(f'현재 날짜와 시간:{now}')
# 날짜의 형식 지정
formatted_date = now.strftime('%Y-%m-%d %H:%M:%S')
print(f'지정된 날짜 출력:{formatted_date}')
# 특정 날짜 생성
specific_date = datetime.datetime(2025,9,4)
print(f'특정한 날짜 출력:{specific_date}')

#ex) 위 내용 기준으로 현재 일시를 @@@@년 @@월 @@일 @@시 @@분으로 출력하고,
#  올해 마지막날짜를 위 형식으로 출력하세요..
# 현재날짜
formated_date2 = now.strftime('%Y년 %m월 %d일 %H시 %M분')
print(f'현재 일시:{formated_date2}')
specific_date2 = datetime.datetime(2025,12,31)
formated_date3 = specific_date2.strftime('%Y년 %m월 %d일 %H시 %M분')
print(f'특정한 연월일:{formated_date3}')
# os 모듈 - 운영 체제와 상호작용
# os모듈을 사용하여 운영 체제 관련  작을 수행할 수 있습니다.
import os
# 현재 작업 디렉토리 확인
current_dir = os.getcwd()
print(f"현재 directory:{current_dir}")






