import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import json
import matplotlib.font_manager as fm
from sklearn.linear_model import LinearRegression
from a30_predict.a03_predictDao import *
# from a30_predict.a02_predictService import *
# #print( userBuyListService( ['1', '3', '5'], [1, 2, 6, 12]))
def userBuyListService(id_list, time_horizons):
    
    list = []

    # 1. 데이터 준비
    
    data_dict = {
        '고객_ID': [],
        '총_구매금액': [],
        '구매횟수': [],
        '고객_연령': []
    }
    # 3. DTO 리스트를 순회하며 각 딕셔너리의 리스트에 값을 추가합니다.
    for dto in userBuyListFun(id_list):
        data_dict['고객_ID'].append(dto.userId)
        data_dict['총_구매금액'].append(dto.buyTot)
        data_dict['구매횟수'].append(dto.buyCnt)
        data_dict['고객_연령'].append(dto.age)   

    df = pd.DataFrame(data_dict)

    # 2. 예측에 필요한 주요 지표 계산
    # 평균 구매 가치
    df['평균_구매_가치'] = df['총_구매금액'] / df['구매횟수']
    # 연간 구매 빈도
    df['구매_빈도'] = df['구매횟수'] / df['고객_연령']
    # 월간 구매 빈도
    df['월간_구매_빈도'] = df['구매_빈도'] / 12


    # 1-3. 학습 데이터(X)와 정답(y) 분리
    # 예측 모델의 성능을 위해 사용할 특성들을 선택합니다.
    features = ['총_구매금액', '구매횟수', '고객_연령', '평균_구매_가치']
    X_train = df[features]
    
    # ** 정답(y) 데이터 생성 (실제로는 이 데이터가 존재해야 함) **
    # 예시: 다음 3개월 구매금액은 (평균 구매 가치 * 1.5 + 구매횟수 * 1000) 이라는 패턴이 있었다고 가정하고 노이즈 추가
    np.random.seed(42) # 결과 재현을 위한 시드 설정
    y_train = (df['평균_구매_가치'] * 1.5 + df['구매횟수'] * 1000) + np.random.randint(-5000, 5000, df.shape[0])

    # 1-4. 선형 회귀 모델 생성 및 학습
    model = LinearRegression()
    model.fit(X_train, y_train)
    print("--- 모델 학습 완료 ---")
    print(f"학습된 계수 (Coefficients): {model.coef_}")
    print(f"학습된 절편 (Intercept): {model.intercept_:.2f}\n")


    # =================================================================
    # 2. 새로운 데이터에 대한 예측
    # =================================================================
    print("--- 2. 새로운 데이터 예측 시작 ---")

    # 2-1. 예측할 대상 고객 데이터 준비
    predict_data_dtos = userBuyListFun(id_list)
    df_predict = pd.DataFrame({
        '고객_ID': [dto.userId for dto in predict_data_dtos],
        '총_구매금액': [dto.buyTot for dto in predict_data_dtos],
        '구매횟수': [dto.buyCnt for dto in predict_data_dtos],
        '고객_연령': [dto.age for dto in predict_data_dtos]
    })
    print("#### 현재 데이터 ####")
    print(df_predict)
    # 2-2. 학습때와 동일하게 특성 엔지니어링 적용
    df_predict['평균_구매_가치'] = df_predict['총_구매금액'] / df_predict['구매횟수']
    df_predict.fillna(0, inplace=True)
    
    # 2-3. 예측에 사용할 특성 선택
    X_predict = df_predict[features]
    
    # 2-4. 학습된 모델로 예측 수행 (결과는 3개월치 예측 금액)
    base_prediction = model.predict(X_predict)
    df_predict['3개월_예상금액'] = base_prediction
    
    # 월 평균 예상 금액 계산
    df_predict['월_평균_예상금액'] = df_predict['3개월_예상금액'] / 3

    # =================================================================
    # 3. 최종 결과 포맷팅 및 JSON 변환
    # =================================================================
    print("--- 3. 최종 결과 생성 ---")
    
    # 3-1. 요청된 기간(time_horizons)별로 예측 금액 계산
    for months in time_horizons:
        col_name = f'{months}월후예상금액'
        df_predict[col_name] = df_predict['월_평균_예상금액'] * months

    # 3-2. 최종 결과물 선택 및 출력
    prediction_cols = ['고객_ID'] + [f'{months}월후예상금액' for months in time_horizons]
    final_df = df_predict[prediction_cols].round(0).astype({'고객_ID': str}) # 금액은 정수로 반올림
    
    # 음수 예측값은 0으로 처리 (구매금액이 음수일 수 없으므로)
    for col in final_df.columns[1:]:
        final_df[col] = final_df[col].apply(lambda x: 0 if x < 0 else int(x))


    print("\n--- 향후 기간별 구매 예측 결과 (머신러닝) ---")
    print(final_df)

    # 3-3. JSON으로 변환
    print("\n--- 'split' 형식 JSON 결과 ---")
    json_split = final_df.to_json(orient='split', force_ascii=False, index=False)
    print(json_split)


    return json_split


#print( "# 최종 리턴할 예측 데이터 #")
print( userBuyListService( ['1', '3', '5'], [1, 2, 6, 12]))