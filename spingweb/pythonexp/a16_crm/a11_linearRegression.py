'''
CRM(Customer Relationship Management) 시스템에서 **Linear Regression(선형 회귀)** 을 활용하면, **숫자로 예측할 수 있는 모든 지표**에 대해 유용하게 쓰입니다.

---

## ✅ CRM에서 Linear Regression으로 예측 가능한 항목들

| 예측 대상                                          | 설명                                         |
| ---------------------------------------------- | ------------------------------------------ |
| 🔢 **고객 생애 가치 (CLV, Customer Lifetime Value)** | 고객이 앞으로 회사에 가져다줄 **총 수익 예측**               |
| 💸 **구매 금액 (Purchase Amount)**                 | 고객의 **다음 구매 금액** 예측                        |
| 🕐 **다음 구매 시점 (Next Purchase Time)**           | 며칠 후 다시 구매할지 예측 (수치형일 경우)                  |
| 🛍️ **장바구니 총액 (Cart Value)**                   | 장바구니에 담긴 상품의 평균 구매액 예측                     |
| 📞 **고객 서비스 소요 시간**                            | 고객 응대에 걸리는 평균 시간 예측                        |
| 📧 **캠페인 반응률**                                 | 캠페인에 따른 **응답 수치 예측 (비율, 수량)**              |
| 💬 **리뷰 수/평점**                                 | 특정 캠페인/제품 후에 고객이 남길 **리뷰 수**나 **평균 평점** 예측 |
| 💳 **할인율에 따른 매출 변화**                           | 할인율이 높아질수록 매출이 얼마나 증가하는지 예측                |

---

## 🎯 예시: 고객 생애 가치(CLV) 예측

### 📌 특징 데이터 예시

```python
# 예측에 사용할 고객 정보 (예시)
| 고객_ID | 총구매횟수 | 평균구매액 | 평균구매간격 | 캠페인응답수 | CLV |
|--------|-------------|-------------|---------------|----------------|------|
| C001   |      5      |    20,000   |     30일      |       2        |  90,000 |
| C002   |     10      |    15,000   |     14일      |       3        | 135,000 |
```

### 📌 파이썬 코드 예시

```python
import pandas as pd
from sklearn.linear_model import LinearRegression

# 샘플 데이터
data = pd.DataFrame({
    '구매횟수': [5, 10, 8, 15, 3],
    '평균구매액': [20000, 15000, 18000, 12000, 25000],
    '구매간격': [30, 14, 20, 10, 40],
    '캠페인응답': [2, 3, 1, 5, 0],
    'CLV': [90000, 135000, 110000, 180000, 70000]
})

X = data[['구매횟수', '평균구매액', '구매간격', '캠페인응답']]
y = data['CLV']

# 모델 학습
model = LinearRegression()
model.fit(X, y)

# 새로운 고객 예측
new_customer = [[7, 17000, 25, 2]]
predicted_clv = model.predict(new_customer)
print("예상 CLV:", predicted_clv[0])
```

---

## 💼 실무에서 유용한 이유

| 효과             | 설명                          |
| -------------- | --------------------------- |
| 🎯 마케팅 효율 향상   | 구매 가능성이 높은 고객에게만 리소스 집중 가능  |
| 💰 예산 최적화      | CLV 높은 고객에게 더 큰 혜택 제공 설계    |
| 🧠 데이터 기반 의사결정 | 감이 아닌 수치 기반 고객 분석 가능        |
| 🕒 타이밍 최적화     | 재구매 시점 예측으로 리마인드 메시지 타이밍 조절 |

---

## 🤖 함께 적용하면 좋은 알고리즘

| 알고리즘        | 용도                       |
| ----------- | ------------------------ |
| **로지스틱 회귀** | 이탈 가능성 0/1로 분류           |
| **랜덤 포레스트** | 중요 변수 파악 및 성능 개선         |
| **K-평균**    | 비슷한 구매패턴 군집화 후 선형 회귀로 예측 |

---

원하시면 CLV 외에도 `할인율 vs 매출`, `리마케팅 후 구매 반응`, `이벤트별 매출 효과` 등을 예측하는 예제도 제공해드릴 수 있어요!
필요한 시나리오 말씀 주세요 😊




물론입니다!
이번엔 **Linear Regression (선형 회귀)** 알고리즘을 **쉽고 정확하게 이해**하고,
**암기법 + 핵심 파이썬 코드**까지 함께 정리해드릴게요.
초보자도 딱 기억될 수 있게 설명드릴게요. 😎

---

## ✅ Linear Regression (리니어 리그래션) 이란?

### 📌 1. 기본 개념

* 주어진 데이터를 기준으로 **가장 잘 맞는 직선을 찾는 것!**
* `y = ax + b` (1차 함수 형태)를 이용해 **x로 y를 예측**하는 알고리즘입니다.

> 🔍 예시: 키로 몸무게를 예측하거나, 공부 시간으로 시험 점수를 예측할 수 있어요!

---

### 📌 2. 알고리즘 핵심 원리

| 단계 | 설명                                                            |
| -- | ------------------------------------------------------------- |
| 1  | `y = ax + b` 형태의 직선을 가정한다                                     |
| 2  | 실제 y값과 예측한 y값의 차이(`오차`)를 계산한다                                 |
| 3  | 오차 제곱의 합(SSE: Sum of Squared Errors)을 **최소화**하는 `a`, `b`를 찾는다 |
| 4  | 찾은 `a`, `b`로 예측을 한다!                                          |

---

## 🧠 암기 포인트 (한 줄 요약)

> “**한 줄로 그어서 차이를 줄여라!**”
> → 데이터를 대표하는 **직선을 그어서 오차(차이)를 최소화**하는 게 핵심

---

## 🧪 핵심 파이썬 코드 (sklearn 기반)

```python
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt
import numpy as np

# 1. 입력 데이터(x)와 출력 데이터(y) 준비
x = np.array([[1], [2], [3], [4], [5]])  # 2차원 배열
y = np.array([1.5, 3.0, 4.5, 6.0, 7.5])  # 실제 y값

# 2. 모델 생성 및 학습
model = LinearRegression()
model.fit(x, y)

# 3. 회귀 계수 확인
a = model.coef_[0]       # 기울기
b = model.intercept_     # y절편
print(f"기울기 a: {a}, 절편 b: {b}")

# 4. 예측 및 시각화
y_pred = model.predict(x)
plt.scatter(x, y, color='blue', label='실제 데이터')
plt.plot(x, y_pred, color='red', label='예측 선')
plt.legend()
plt.title("Linear Regression")
plt.show()
```

---

## 🧠 핵심 코드 암기법 (말장난 + 스토리화)

| 코드 줄                         | 기억 문장             |
| ---------------------------- | ----------------- |
| `model = LinearRegression()` | “직선 전문가 불러오기”     |
| `fit(x, y)`                  | “x로 y를 배우게 하기”    |
| `model.predict(x)`           | “직선 전문가가 예측 시작!”  |
| `coef_`, `intercept_`        | “a와 b 값 꺼내기!”     |
| `plt.plot()`                 | “빨간 선으로 미래를 보여줘!” |

---

## 🎯 실생활 비유

> “시험 공부 시간을 x축에 두고, 성적을 y축에 놓자!”
> → 공부 많이 하면 점수도 높아져서 점들이 올라가겠죠?
> → 그러면 그 점들 사이를 **최대한 가까이 지나가는 직선**을 그리는 게 선형 회귀예요!

---

## 🧠 암기 꿀팁 요약

| 개념         | 기억법                                      |
| ---------- | ---------------------------------------- |
| 직선         | y = ax + b                               |
| 학습         | 오차(실제값 - 예측값)의 제곱을 최소화                   |
| 목적         | 미래 y를 x로 예측                              |
| sklearn 함수 | `LinearRegression().fit()` → `predict()` |

---

## 🔁 연습 미션 제안

1. `x = np.array([[10], [20], [30], [40], [50]])`
   `y = np.array([100, 200, 300, 400, 500])` 로 바꿔서 실습
2. 예측값을 그래프 말고 `print()`로 직접 확인해보기
3. `x = np.arange(1, 11).reshape(-1,1)` 로 바꿔서 실험하기

---

원하시면 아래 내용도 추가 설명 드릴 수 있어요:

* 다항 회귀 (Polynomial Regression)
* 결정계수(R²)로 정확도 측정
* 손실 함수 (Loss Function) 계산 원리

필요하신 방향을 알려주세요!


'''


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

# 1. 예제 데이터 생성
study_hours = np.array([1, 2, 3, 4, 5]).reshape(-1, 1)  # 독립변수 X
scores = np.array([30, 50, 65, 70, 85])               # 종속변수 y

# 2. 모델 생성 및 학습
model = LinearRegression()
model.fit(study_hours, scores)

# 3. 예측 및 결과 확인
predicted = model.predict(study_hours)
print(f"기울기(slope): {model.coef_[0]:.2f}")
print(f"절편(intercept): {model.intercept_:.2f}")

# 4. 시각화
plt.rc('font', family='Malgun Gothic') # 한글 폰트 설정
plt.scatter(study_hours, scores, color='blue', label='실제 데이터')
plt.plot(study_hours, predicted, color='red', label='회귀선')
plt.xlabel('공부 시간')
plt.ylabel('점수')
plt.title('공부 시간 vs 점수 (선형 회귀)')
plt.legend()
plt.show()
