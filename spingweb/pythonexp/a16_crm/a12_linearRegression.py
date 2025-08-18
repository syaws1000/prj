import pandas as pd

# 예시 데이터 (고객 정보 및 거래 내역)
data = {
    '고객_ID': [1, 2, 3, 4, 5],
    '총_구매금액': [1000, 1500, 1200, 2000, 1700],  # 고객이 지금까지 지출한 총 금액
    '구매횟수': [10, 12, 8, 15, 11],  # 고객의 총 구매 횟수
    '고객_연령': [5, 3, 4, 2, 6]  # 고객이 회사와 거래를 이어온 기간 (년 단위)
}

# 데이터프레임 생성
df = pd.DataFrame(data)

# 평균 구매 가치(Average Purchase Value) 계산
df['평균_구매_가치'] = df['총_구매금액'] / df['구매횟수']

# 구매 빈도(Purchase Frequency) = 고객의 연간 평균 구매 횟수
df['구매_빈도'] = df['구매횟수'] / df['고객_연령']

# 고객 생애 기간(Customer Lifespan) = 고객의 연령 (고객이 거래를 한 기간)
df['고객_생애_기간'] = df['고객_연령']

# CLV 계산
df['CLV'] = df['평균_구매_가치'] * df['구매_빈도'] * df['고객_생애_기간']

# 결과 출력
print(df[['고객_ID', 'CLV']])
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# 모델에 사용할 특성 선택
X = df[['평균_구매_가치', '구매_빈도', '고객_생애_기간']]
y = df['CLV']

# 훈련 데이터와 테스트 데이터로 분할
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# 회귀 모델 학습
model = LinearRegression()
model.fit(X_train, y_train)

# 예측
y_pred = model.predict(X_test)

# 성능 평가
mse = mean_squared_error(y_test, y_pred)
print(f'평균 제곱 오차(MSE): {mse}')
print(f'예측된 CLV: {y_pred}')
