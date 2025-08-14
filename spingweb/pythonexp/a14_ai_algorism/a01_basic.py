'''
# 빅데이터 알고리즘
1. 사용하는 이유
    1) 데이터 분석 및 패턴 인식
        빅데이터에서는 방대한 양의 데이터를 처리하고 분석해야 하므로, 효율적인 알고리즘이 필요합니다.
        알고리즘은 데이터를 분류, 예측, 클러스터링 등 다양한 방식으로 처리하여, 데이터를 의미 있는 정보로 변환하는데 중요한 역할을 합니다.
    2) 자동화와 최적화
        빅데이터에서 발생하는 복잡한 문제를 해결하기 위해 자동화된 시스템을 구축할 수 있습니다. 알고리즘을 통해 수작업을 줄이고,
        최적화된 결과를 얻을 수 있습니다.
    3) 효율성
        데이터 양이 커지면 기존의 수작업 방식으로 처리하기 어려워집니다. 알고리즘은 효율적인 데이터 처리를 통해 빅데이터 분석을 가능하게 합니다.
    4) 실시간 처리
        실시간 분석이 필요한 경우, 알고리즘을 통해 데이터를 즉시 처리하고 즉각적인 의사결정을 할 수 있븐디ㅏ.
2. 주요 알고리즘과 실무에서의 연관관계
    1) K 최근접 이웃(K-Nearest Neighbors, KNN)
        - 실무 연관 관계 : 추천 시스템, 분류 문제
        - 적용 분야 : 고객 선호도를 예측하는 추천 시스템, 상품 분류 등
        - 핵심 아이디어 : k개의 가까운 이웃을 찾아 데이터를 분류하거나 예철
        - 핵심 파이썬 코드
            KNN 모델  knn = KNeighborsClassifier(n_neighbor=3); knn.fit(X_train, y_train)
            예측  y_pred = knn.predict(X_test)
            정확도 평가 accuracy = accuracy_score(y_test, y_pred)
                      print(f"정확도:{accuracy})
    2) 서포트 벡터 머신(Support Vector Machine, SVM)
        - 실무 연관 : 이미지 분류, 스팸 이메일 분류, 의료 데이터 분석
        - 적용 분야 : 텍스트, 이미지 분류 문제에 매우 효과적
        - 핵심 아이디어 : 최적의 분류 경계(Hyperplane)를 찾는 알고리즘
        - 핵심 코드
            SVN 모델 svm = SVC(kenel="linear"); svm.fit(X_train,Y_train)
            예측 y_pred = svm.predict(X_test)
    3) 램덤 포레스트(Random Forest) *** CRM 연관관계 있음 - 예제로 처리
        - 실무 연관 : 금융분야 신용 평가, 마케팅 분석, 질병 예측
        - 적용 분야 : 다양한 예측 문제에 강력하여, 앙상블 학습을 통해 더 높은 정확도 제공
        - 핵심 아이디어 : 여러 결정 트리를 결합하여 예측 정확도 향상
        - 핵심 코드 rf = RandomForestClassifier(n_estimators = 100)
    4) 주성분 분석(Principal Component Analysis, PCA)
        - 실무 연관 : 데이터 차원 축소, 특성 추출, 이미지 압축
        - 적용 분야 : 고차원 데이터를 저차원 변환 하여 분석 효율성을 높임
        - 핵심 아이디어 : 주요 성분을 추출하여 데이터의 차원을 축속
        - 핵심 코드 : pca = PCA(n_component-2); X_pca = pca.fit_transform(X)   

# 기본 환경 설정
1. skikit-learn, pandas 라이브러리 설치
    pip install scikit-learn pansdas
                     


'''
from sklearn.datasets import load_iris
import pandas as pd
# 샘플 데이터 로딩
iris = load_iris()
x = iris.data
y = iris.target
#print(x)
#print(y)
# 테이블 형태의 데이터로 변환
df = pd.DataFrame(x, columns=iris.feature_names)
print(df)