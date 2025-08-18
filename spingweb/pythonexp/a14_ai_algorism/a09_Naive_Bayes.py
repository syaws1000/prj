from sklearn.naive_bayes import GaussianNB
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

iris = load_iris()
X = iris.data
y = iris.target

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

nb = GaussianNB()
nb.fit(X_train, y_train)

y_pred = nb.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
'''
암기법:
Naive Bayes: **"조건부 확률"**을 이용한 분류기.

fit(): "학습시키다".

predict(): "예측" – 예측된 클래스를 반환.

이미지:
상상해보세요, **"조건에 따라 확률을 계산"**하는 모습.


'''