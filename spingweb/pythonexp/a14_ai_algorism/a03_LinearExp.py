import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

# 1. 데이터 준비 : 
studyHours = np.array([2,3,5,7,8,10]).reshape(-1,1)
print(studyHours)
result_points = np.array([55,60,70,80,85,95])

# 2. 마법의 자(선형 회귀 모델) 준비 및 학습
# 이 데이터에 꼭 맞는 마법의 자를 찾아줘 하고 컴퓨터에게 시키는 과정
model = LinearRegression()
model.fit(studyHours, result_points)

# 3. 예측하기 :
pre_hours = np.array([[12]]) # 
predicted_points = model.predict(pre_hours)
if predicted_points[0]>100:
    predicted_points[0] = 100 



print(f"학습 시간이 12시간일 때, 예측되는 점수 약 {predicted_points[0]:.0f}점 입니다")


plt.rc('font', family='Malgun Gothic')

# 4. 마법의 자가 잘 그려졌는지 눈으로 확인 해봐요.
plt.scatter(studyHours, result_points, color="blue", label="학습 시간") # 실제 데이터 점 찍기
plt.plot(studyHours, model.predict(studyHours), color="red", label="마법의 자(예측선)") # 모델이 찾는 직선 그리기
plt.scatter(pre_hours,predicted_points, color="green", s=100, label="12시간일 때 예측", zorder=5)
# 예측한 크기 찍기
# 그래프 꾸미기
plt.title("학습시간과 시험점수의 관계") # 제목
plt.xlabel("학습시간(Hour)") # x축이름
plt.ylabel("시험점수(Point)") # y축 이름
plt.legend() # 어떤 선이 무엇인지 설명
plt.grid(True) # 격자무늬 추가
plt.show() # 그래프 보여주기
