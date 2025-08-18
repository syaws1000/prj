from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report
from datetime import datetime

# 1. 학습 데이터 (다양한 표현으로 확장!)
X_train = [
    "안녕", "안녕하세요", "반가워", "좋은 아침",
    "현재 시간 알려줘", "몇 시야?", "지금 몇 시입니까", "시간 좀 알려줄래?",
    "날씨 어때?", "오늘 날씨 알려줘", "밖에 비 와?", "더워?",
    "고마워", "감사합니다", "고맙습니다",
    "너 이름이 뭐야?", "이름 알려줘", "너 누구야?"
]

y_train = [
    "인사", "인사", "인사", "인사",
    "시간", "시간", "시간", "시간",
    "날씨", "날씨", "날씨", "날씨",
    "감사", "감사", "감사",
    "이름", "이름", "이름"
]

# 2. 벡터화
vectorizer = TfidfVectorizer(ngram_range=(1, 2))
X_vec = vectorizer.fit_transform(X_train)

# 3. 모델 학습 (SVM: 정확도 우수)
model = SVC(kernel='linear', probability=True)
model.fit(X_vec, y_train)

# 4. 정확도 평가
y_pred = model.predict(X_vec)
print("✅ [훈련 데이터 정확도]:", accuracy_score(y_train, y_pred))
print(confusion_matrix(y_train, y_pred))
print(classification_report(y_train, y_pred))

# 5. 응답 처리 함수
def generate_response(label):
    if label == "인사":
        return "안녕하세요! 무엇을 도와드릴까요?"
    elif label == "시간":
        now = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        return f"현재 시간은 {now}입니다."
    elif label == "날씨":
        return "오늘은 맑고 기온은 약 24도입니다."
    elif label == "감사":
        return "천만에요! 도움이 되어 기쁩니다 😊"
    elif label == "이름":
        return "저는 파이썬으로 만들어진 AI 챗봇입니다."
    else:
        return "죄송해요, 아직 그건 잘 몰라요."

# 6. 사용자 입력으로 챗봇 실행
def chatbot():
    print("\n🤖 파이썬 챗봇에 오신 것을 환영합니다! ('종료' 입력 시 종료)")
    while True:
        user_input = input("🙋 사용자: ")
        if user_input.strip().lower() == "종료":
            print("👋 챗봇: 안녕히 가세요!")
            break
        vec_input = vectorizer.transform([user_input])
        pred_label = model.predict(vec_input)[0]
        response = generate_response(pred_label)
        print("🤖 챗봇:", response)

def chatbot2(user_input):
    vec_input = vectorizer.transform([user_input])
    pred_label = model.predict(vec_input)[0]
    response = generate_response(pred_label)
    return response
# from a17_ai.a12_chatbot import chatbot2
# result chatbot2(msg)
# 7. 실행
# chatbot()
