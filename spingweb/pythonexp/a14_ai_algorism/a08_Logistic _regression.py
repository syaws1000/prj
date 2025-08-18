from sklearn.linear_model import LogisticRegression
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

iris = load_iris()
X = iris.data
y = iris.target

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

log_reg = LogisticRegression(max_iter=200)
log_reg.fit(X_train, y_train)

y_pred = log_reg.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f"Accuracy: {accuracy}")
'''
암기법:
Logistic Regression: **"로지스틱"**은 **"확률"**을 예측하는 회귀 모델.

fit(): "학습시키다".

predict(): "예측" – 예측된 클래스 반환.

max_iter=200: "최대 반복 횟수" 설정.

이미지:
상상해보세요, "확률이 커지는 선형 그래프".
'''