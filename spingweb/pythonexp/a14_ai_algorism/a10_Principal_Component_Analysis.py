from sklearn.decomposition import PCA
from sklearn.datasets import load_iris
import matplotlib.pyplot as plt

iris = load_iris()
X = iris.data

pca = PCA(n_components=2)
X_pca = pca.fit_transform(X)

plt.scatter(X_pca[:, 0], X_pca[:, 1], c='blue')
plt.xlabel('PCA 1')
plt.ylabel('PCA 2')
plt.show()
'''
암기법:
PCA: **"주성분"**을 **"추출"**하여 데이터를 차원 축소.

fit_transform(): 데이터를 **"변형"**하여 주성분을 추출.

n_components=2: 2개의 주성분으로 차원 축소.

이미지:
상상해보세요, **"데이터가 2차원 평면으로 축소"**되는 모습.
'''