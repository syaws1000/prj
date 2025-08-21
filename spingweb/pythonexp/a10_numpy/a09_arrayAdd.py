'''
# 배열 합치기 : v는 수직, h는 수평으로 착!!!
1. 여러 배열을 하나로 합칠 때는 concatenate(연결)를 기본으로 사용하여, 쌓는 방향에 따라 vstack와 hstack을 사용하면 더 직관적입니다.
    - np.vstack(): vertical(수직) stack 배열들을 수직으로(위아래로) 쌓습니다.
    - np.hstack() : horizontal(수평) stack 배열들을 수평으로(좌우로) 쌓습니다.
'''
import numpy as np
arr1 = np.array([1,2,3])
arr2 = np.array([4,5,6])
# vstack 위 아래로 쌓기
v_stacked = np.vstack((arr1,arr2))
print(v_stacked)
# hstack 좌우로 쌓기
h_stacked = np.hstack((arr1, arr2))
print(h_stacked)
'''
ex) 당신은 한 카페의 매니저입니다. 오전 아르바이트생 철수와 오후 아르바이트생 영희가 각각 아메리카노, 라떼,
카푸치노를 몇 잔 팔았는지 기록했습니다. 이 두 기록을 하나의 표로 합쳐서 오늘 하루 전체 판매량을
파악할려고 합니다. 각 행의 근무시간(오전/오후)를 나타내도록 데이터를 합쳐보세요..
        아메리카노      라떼    카푸치노
철수    25              15      10
영희    20              22      13

'''
# 오전 근무자 '철수'의 판매량(아메리카노, 라떼, 카푸치노)
morning_sales = np.array([25,15,10])
# 오후 근무자 '영희'의 판매량
afternoon_sales = np.array([20,22,13])
# 오전(위), 오후(아래) 판매 기록을 수직으로 쌓기
daily_report = np.vstack((morning_sales, afternoon_sales))
print("=== 오늘 판매 기록 ===")
print(daily_report)
'''
# 선형대수 기본 연산 : 행렬 뒤집기 옵션 T
1. Numpy는 강력한 선형대수 연산 기능을 제공합니다. 
    T : 행과 열을 뒤집는 Transpose(전치 행렬) 처리..
'''
mat = np.array([[1,2],[3,4]])
# T를 붙여 행과 열을 뒤집기
print(mat.T)
mat1 = np.array([[1,2,3,4]])
# T를 붙여 행과 열을 뒤집기
print(mat1.T)
'''
ex) 과목별 성적 뒤집기
scores는 학생들의 국어, 영어, 수학 성적을 담고 있는 표(행렬)입니다. 첫번째 행은 '철수'의 성적,
두번째 행을 '영희'의 성적이죠. 이 표를 과목별로 학생들의 성적을 볼 수 있도록 뒤집어 보세요.
학생 성적 행 : 학생, 열 : 과목
1. 초기 배열
        국어 영어 수학
   철수  80, 75, 90
   영희  95, 88, 72
2. 처리된 배열
         철수  영희
    국어  80   95
    영어  75   88
    수학  90   72
'''
scores = np.array([[80, 75, 90], [95, 88, 72]])
print("# 초기 성적 #")
print(scores)
print("# 과목별 점수(행/열 변경) #")
print(scores.T)