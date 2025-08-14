import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LogisticRegression

# 1. 데이터 만들기
character_levels = np.array([
    [10], [12], [15], [20], # 패배한 그룹
    [30], [35], [40], [45]  # 승리한 그룹
])
# 결과(y): 0=패배, 1=승리
hunting_outcomes = np.array([0, 0, 0, 0, 1, 1, 1, 1])

# 2. 로지스틱 회귀 모델 학습시키기(기계에서 규칙을 배우게 하기)
#    승리/패배 예측 기계
model = LogisticRegression()
#    컴퓨터에게 데이터(공부 시간과 결과)를 보여주고 S자 규칙을 스스로 배우게 합니다.
model.fit(character_levels, hunting_outcomes)
# 3. 결과 그래프로 그래기(컴퓨터 배운 것을 눈으로 확인하기)
#  모델이 예측한 S자 모양의 합격 확률 선을 그려봅니다.
X_test = np.linspace(1,50,300).reshape(-1,1) # 1레벨 부터 50까지 촘촘하게 점을 찍어요
y_prob = model.predict_proba(X_test)[:,1] # 각 레벨 에 대한 승리 확률을 계산

plt.rc('font', family='Malgun Gothic')

# 실제 데이터를 파란 점으로 찍어요
plt.scatter(character_levels,hunting_outcomes, color="blue", label="실제 데이터(0:승래, 1:패배)")
# 모델이 학습한 S자 모양의 확률 선을 빨간색으로 그려요
plt.plot(X_test, y_prob, color="red", linewidth=3, label="예측한 승리 확률(마법의 S선)")
# 50% 기준선을 초록새 점선으로 그려요
plt.axhline(y=0.5, color="green", linestyle="--", label="승리/실패 결정 기준 (50%)")

# 그래프 제목과 설명
plt.title("레벨에 따른 승리 확률 예측")
plt.xlabel("레벨")
plt.ylabel("승리 확률")
plt.legend()
plt.grid(True)


# 새로운 데이터로 예측해 보기(새로운 문제 풀어보기)
# 만약 29레벨이라면 승리할 수 있을까?
attack_new = np.array([[29]])
# 먼저 승리할 '확률'을 물어봐요
vic_probability = model.predict_proba(attack_new)[:,1]
# 그 다음 최종 결과 (합격/불합격)을 물어봐요
prediction = model.predict(attack_new)
print(f'만약 {attack_new[0][0]}레벨로 전쟁 한다면...')
print(f"승리할 확률은 약 {vic_probability[0]*100:.2f}%입니다.")
print(f"최종 예측 결과: {'승리' if prediction[0] == 1 else '패배'}")
plt.scatter(attack_new,prediction[0], color="green", s=100, label="레벨29일 때 예측", zorder=5)

plt.show()


'''
a05_logisticRegExp.py

캐릭터의 레벨에 따라 몬서터를 잡기 성공/실패여부 처리 하여 로직스틱 회기로 처리하고..
레벨 29일때, 성공/실패여부를 출력 하세요..

 특징(X): [캐릭터 레벨] (2차원 배열 형태로 만듭니다)
character_levels = np.array([
    [10], [12], [15], [20], # 패배한 그룹
    [30], [35], [40], [45]  # 승리한 그룹
])
# 결과(y): 0=패배, 1=승리
hunting_outcomes = np.array([0, 0, 0, 0, 1, 1, 1, 1])

'''





