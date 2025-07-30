'''
# 배열 생성 함수
1. NumPy 배열을 생성하는 다양한 방법을 이해하고 활용하는 것은 데이터 분석 및 과학적 계산에서 중요한 기술입니다.
   이 단계에서는 NumPy에서 제공하는 여러 배열 생성 함수(np.array(), np.zeros(), np.ones(), np.arange(), np.linspace())
   를 살펴보고, 각 함수가 어떻게 배열을 생성하는지에 대해 학습합니다.
2. 핵심 코드
   1) np.array() : 기존의 리스트나 튜플을 기반으로 배열을 생성합니다.
   2) np.zeros() : 주어진 모양(shape)으로 0으로 채워진 배열을 생성합니다.
   3) np.ones() : 주어진 모양(shape)으로 1로 채워진 배열을 생성합니다.
   4) np.arange() : 지정된 범위 내의 숫자 배열을 생성합니다.(range()와 유사)
   5) np.linspace() : 지정된 구간을 균등 간격으로 나누어 배열을 생성합니다.

'''
import numpy as np
# np.zeros() : 0으로 채운 배열 생성
#  주어진 형태(shape-차원행열)로 0으로 채움
# 2x3 배열을 생성(모든 값이 0)
zeros_arr = np.zeros((2,3))
print(zeros_arr)
# ex) 4x7,  5x5 행열의 2차원의 배열(0으로 값 설정)을 만들어 출력하세요..
zeros_arr2 = np.zeros((4,7))
print(zeros_arr2)
zeros_arr3 = np.zeros((5,5))
print(zeros_arr3)
# np.ones() : 1초 배열 생성
# 주어진 형태(shape)로 해당 차원의 형태로 배열을 생성합니다.
ones_arr = np.ones((3,4))
print(ones_arr)

'''
# np.arange() 특정 범위의 값으로 배열 생성
1. 시작값과 종료값, 그리고 간격을 지정하여 배열을 생성합니다. range()와 비슷
2. 형식
   np.arange(시작, 종료, 증값단위)

'''
range_arr1 = np.arange(1,10+1,1)  # 1~10까지 1씩 증가 1차원배열
range_arr2 = np.arange(1,10+1,2)  # 1~10까지 2씩 증가 1차원배열
range_arr3 = np.arange(1,10+1,0.5) # 1~10까지 0.5씩 증가 1차원배열
print(range_arr1)
print(range_arr2)
print(range_arr3)
# ex1) 5~45까지 5씩 증가하는 1차원 배열
range_arr4 = np.arange(5,45+1, 5) # 5~45 5증가
print(range_arr4)
# ex2) 구구단의 9단을 위 내용을 활용한 배열을 이용하여 출력하세요.. for in 구문 활용
#  구구단의 9단을 출력할려면 1~9까지 리스트가 필요
range_arr5 = np.arange(1,9+1,1)
grade = 9
for cnt in range_arr5:
    print(f'{grade} x {cnt} = {grade*cnt}')

'''
#  np.linspace() : 균등 간격으로 숫자 배열 생성
1. np.linspace() 는 주어진 구간을 균등 간격으로 나누어 배열을 생성합니다. 시작값, 종료값, 그리고 나루 구간 수를 지정합니다.
2. 기본형식
   np.linspace(시작값, 미지막값, 균등으로나눌갯수)
'''
# 0부터 1까지 균등 간격으로 5개의 값을 가진 배열 생성
linspace_arr1 = np.linspace(0,1,5)
print("# 균등 처리(0~1, 5)")
print(linspace_arr1)
# ex) 0~100점으로 6으로 균등 처리값을 가진 배열 생성
linspace_arr2 = np.linspace(0,100,6)
print(f'0~100 균등 6범위로 나눈 처리:{linspace_arr2}')
