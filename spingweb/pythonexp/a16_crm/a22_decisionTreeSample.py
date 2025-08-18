import pandas as pd

# 간단한 고객 이탈 데이터 생성
data = {
    '나이': [25, 40, 35, 50, 23, 45],
    '월_구매금액': [30000, 50000, 10000, 70000, 8000, 20000],
    '이용개월수': [3, 24, 1, 36, 2, 6],
    '이탈여부': [0, 0, 1, 0, 1, 1]  # 1: 이탈, 0: 유지
}

df = pd.DataFrame(data)
from sklearn.tree import DecisionTreeClassifier

# 입력(X)과 출력(y) 분리
X = df[['나이', '월_구매금액', '이용개월수']]
y = df['이탈여부']

# 모델 생성 및 학습
model = DecisionTreeClassifier(max_depth=3, random_state=0)
model.fit(X, y)

# 새 고객 예측
new_customer = [[30, 15000, 4]]
prediction = model.predict(new_customer)

print("이 고객은 이탈할까?", "✅ 이탈" if prediction[0] == 1 else "👍 유지")

from sklearn import tree
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
tree.plot_tree(model, feature_names=['나이', '월_구매금액', '이용개월수'],
               class_names=['유지', '이탈'], filled=True)
plt.title("고객 이탈 예측 결정 트리")
plt.show()
