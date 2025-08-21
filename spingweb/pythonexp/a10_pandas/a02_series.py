'''
# Series 결측치(NaN) 다루기
1. 데이터가 비어 있는 경우(NaN, Not a Number)를 효과적으로 처리할 수 있습니다.

'''
import numpy as np
import pandas as pd
# 결측치가 포함된 Series 생성.
s_nan = pd.Series([1,2,5, np.nan, 6,8], index=["A","B","C","D","E","F"])
print("### 원본 Series:\n", s_nan)
# 결측치인지 확인(isnull)
print("### 결측치 확인:\n", s_nan.isnull())
# 결측치를 제어(dropna)
print("### 결측치 제거 후:\n", s_nan.dropna())
# 결측치를 특정한 값(예, 0)으로 체우기(fillna)
print("결측치를 0으로 채운 후:\n", s_nan.fillna(0))
'''
ex) 상품 재고 채워넣기
각 삼품의 일일 판매량을 기록하고 있습니다. 그런데 신상품(스마트워치)는 아직 판매 기록이 없어 NaN으로 표시되어 있습니다.
재고 관리 시스템에서는 NaN을 허용하지 않으므로, 아직 판매 기록이 없는 상품 판매량을 0으로 채워 넣으려고 합니다. 
1. 현재 재고량 표현(초기)
    스마트폰  20
    노트북 15
    태플릿  25
    스마트워치 NaN
2. 결측치 제거 표현

3. 결측치를 0으로 표현..

'''
daily_sales = pd.Series({"스마트폰":20, "노트북":15, "태블릿":25, "스마트워치":np.nan})
print("현재 재고량(초기)\n", daily_sales)
print("결측치 제고표현\n", daily_sales.dropna())
print("결측치 0으로 표현\n", daily_sales.fillna(0))

# 데이터의 분석 및 연산
# 1. 과일 판매량 Series
fruits = pd.Series([30,25,40,25], index=['apple','banana','apple','cherry'])
print("## 과일 판매량:\n", fruits)
# 2. 각 과일이 몇 번 등장했는 계산(value_counts)
print("## 과일 종류별 빈도수:\n", fruits.index.value_counts())
# 3. 모든 판매량에 2를 곱하기(산술 연산자)
print("## 모든 판매량 X2:\n", fruits*2)
# 4. 판매량이 30 이상인 데이터만 필터링
print("## 30개 이상 팔린 과일:\n", fruits[fruits>=30])
'''
ex) 시험 합격자 몇단 추리기
학생들의 시험 점수가 test_scores Series에 저장되어 있습니다. 합격 기준은 80점 이상입니다.
필터링을 사용해서 합격한 학생들의 점수만 골라내 합격자 명단을 만들어 보세요...
철수  : 78,
영희 : 92
민수 : 85
지혜  : 68
준서 : 95
'''
test_scores = pd.Series({"철수":78, "영희":92,"민수":85,"지혜":68,"준서":95})
print("## 전체 학생 점수 ###\n", test_scores)
print("## 80점 이상인 학생들만 필터링(합격자) ###\n", test_scores[test_scores>=80])