import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.tree import export_graphviz
import graphviz
# pip install graphviz

# 한글 폰트가 없는 환경을 위해 폰트 설정을 주석 처리하고,
# 그래프에 영문 제목을 사용하도록 수정합니다.
# import matplotlib.font_manager as fm
# font_path = 'C:/Windows/Fonts/malgun.ttf' # 사용자의 환경에 맞는 폰트 경로 지정
# font_prop = fm.FontProperties(fname=font_path)
# plt.rc('font', family=font_prop.get_name())

# 1. 가상의 CRM 데이터 생성
print("Step 1: Creating virtual CRM data...")
np.random.seed(42) # for reproducibility
data_size = 500
data = {
    'visit_frequency': np.random.randint(1, 31, size=data_size),
    'days_since_last_login': np.random.randint(1, 180, size=data_size),
    'avg_session_duration': np.random.uniform(1.0, 60.0, size=data_size).round(2),
    'total_purchase_amount': np.random.randint(10000, 1000000, size=data_size),
    'support_tickets': np.random.randint(0, 10, size=data_size)
}
df = pd.DataFrame(data)

# 이탈 여부(Target) 생성 로직
churn_probability = (df['days_since_last_login'] / 180) + (df['support_tickets'] / 10) - (df['visit_frequency'] / 30)
df['churn'] = (churn_probability > np.median(churn_probability)).astype(int)

print("\n[Generated Data Sample]")
print(df.head())

# 2. 데이터 전처리 (Features 와 Target 분리)
print("\nStep 2: Preprocessing Data (Separating Features and Target)")
X = df.drop('churn', axis=1)
y = df['churn']

# 3. 학습 및 테스트 데이터 분리
print("\nStep 3: Splitting data into Training and Test sets (80% train, 20% test)")
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)
print(f" - Training data: {X_train.shape[0]} samples")
print(f" - Test data: {X_test.shape[0]} samples")

# 4. 결정트리 모델 학습
print("\nStep 4: Training the Decision Tree Model")
# 과적합 방지를 위해 트리의 최대 깊이를 4로 제한 (max_depth=4)
model = DecisionTreeClassifier(max_depth=4, random_state=42)
model.fit(X_train, y_train)
print(" - Model training complete!")

# 5. 예측 및 성능 평가
print("\nStep 5: Model Prediction and Evaluation")
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f" - Model Accuracy: {accuracy:.4f} ({accuracy*100:.2f}%)")

print("\n[Classification Report]")
print(classification_report(y_test, y_pred, target_names=['Retain(0)', 'Churn(1)']))

# Confusion Matrix 시각화
plt.figure(figsize=(8, 6))
cm = confusion_matrix(y_test, y_pred)
sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', xticklabels=['Retain', 'Churn'], yticklabels=['Retain', 'Churn'])
plt.title('Confusion Matrix')
plt.xlabel('Predicted Label')
plt.ylabel('True Label')
plt.show()

# 6. 결정트리 시각화
# ✨ 중요: 이 코드를 실행하려면 Graphviz 프로그램이 컴퓨터에 설치되어 있어야 합니다.
# 1. pip install graphviz
# 2. Graphviz 다운로드 및 설치: https://graphviz.org/download/
print("\nStep 6: Visualizing the Decision Tree")
try:
    dot_data = export_graphviz(model,
                               out_file=None,
                               feature_names=X.columns,
                               class_names=['Retain', 'Churn'],
                               filled=True,
                               rounded=True,
                               special_characters=True)

    graph = graphviz.Source(dot_data)
    graph.render("decision_tree_for_crm") # 'decision_tree_for_crm.png' 파일로 저장
    print(" - Visualization saved to 'decision_tree_for_crm.png'.")
    # 주피터 노트북 환경에서는 아래 객체를 마지막 라인에 두면 바로 표시됩니다.
    # display(graph)
except Exception as e:
    print(f" - Could not generate visualization. Error: {e}")
    print(" - Please ensure Graphviz is installed on your system.")


# 7. 피처(특성) 중요도 분석
print("\nStep 7: Analyzing Feature Importances")
feature_importances = pd.Series(model.feature_importances_, index=X.columns).sort_values(ascending=False)
print(feature_importances)

plt.figure(figsize=(10, 6))
sns.barplot(x=feature_importances.values, y=feature_importances.index)
plt.title('Feature Importances')
plt.xlabel('Importance')
plt.ylabel('Feature')
plt.show()