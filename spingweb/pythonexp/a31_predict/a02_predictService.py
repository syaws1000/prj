import pandas as pd
import numpy as np
import json
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error, r2_score
from datetime import datetime
from a31_predict.a03_predictDao import *
# from a30_predict.a02_predictService import *
# #print( userBuyListService( ['1', '3', '5'], [1, 2, 6, 12]))
def userBuyListService(id_list, time_horizons):
    
    list = []



    # =================================================================
    # 2. 새로운 데이터에 대한 예측
    # =================================================================
    print("--- 2. 새로운 데이터 예측 시작 ---")

    # 2-1. 예측할 대상 고객 데이터 준비
    #df = userBuyListFun(id_list)
    #df = pd.DataFrame(userBuyListFun(id_list)) 

    predict_data_dtos = userBuyListFun(id_list)
    df = pd.DataFrame({
        'userId': [dto.userId for dto in predict_data_dtos],
        'age': [dto.age for dto in predict_data_dtos],
        'join_date': [dto.join_date for dto in predict_data_dtos],
        'buyCnt': [dto.buyCnt for dto in predict_data_dtos],
        'buyTot': [dto.buyTot for dto in predict_data_dtos],
        'last_purchase_date': [dto.last_purchase_date for dto in predict_data_dtos],
        'actual_future_3m_purchase': [dto.actual_future_3m_purchase for dto in predict_data_dtos]
    })


    print("## 데이터 #")
    print(df)

    if df.empty:
        print("데이터를 가져오는 데 실패했습니다. 예측을 중단합니다.")
        return "{}"

    # 날짜 형식 변환 join_date last_purchase_date
    #df['join_date'] = pd.to_datetime(df['join_date'])
    #df['last_purchase_date'] = pd.to_datetime(df['last_purchase_date'])
    #from datetime import datetime  
    #today = datetime.strptime(datetime.now() , '%Y-%m-%d')
    today = datetime.now() #datetime.strptime(datetime.now() , '%Y-%m-%d')
    
    # 1-1. 추가 특성 생성
    df['평균_구매_가치'] = df['buyTot'] / df['buyCnt']
    df['가입기간_일'] = (today - df['join_date']).dt.days
    df['최근성_일'] = (today - df['last_purchase_date']).dt.days
    df['평균_구매_주기'] = df['가입기간_일'] / df['buyCnt']

    df['월_평균_예상금액'] = df['actual_future_3m_purchase'] / 3
    df.replace([np.inf, -np.inf], 0, inplace=True)
    df.fillna(0, inplace=True)

    # =================================================================
    # 2. 모델 학습
    # =================================================================
    print("\n--- 2. 모델 학습 시작 ---")
    #df['last_purchase_date'] = pd.to_datetime(df['last_purchase_date'])
    for months in time_horizons:
        col_name = f'{months}월후예상금액'
        df[col_name] = df['월_평균_예상금액'] * months

    print("### 모델 학습 후 #")
    print(df)

    features = ['buyTot', 'buyCnt', 'age', '평균_구매_가치', '가입기간_일', '최근성_일', '평균_구매_주기']
    X = df[features]
    y = df['actual_future_3m_purchase']

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    model = RandomForestRegressor(n_estimators=100, random_state=42, n_jobs=-1)
    model.fit(X_train, y_train)

    y_pred = model.predict(X_test)
    mae = mean_absolute_error(y_test, y_pred)
    r2 = r2_score(y_test, y_pred)
    
    print(f"--- 모델 학습 완료 (MAE: {mae:,.0f}원, R²: {r2:.2f}) ---")

    # =================================================================
    # 3. 요청된 고객 데이터 예측
    # =================================================================
    print("\n--- 3. 요청된 고객 데이터 예측 ---")

    df_predict = df[df['userId'].isin(id_list)].copy() # 컬럼명 소문자로 변경
    X_predict = df[features]
    
    base_prediction = model.predict(X_predict)
    df_predict['3개월_예상금액'] = base_prediction
    df_predict['월_평균_예상금액'] = df_predict['3개월_예상금액'] / 3
    
    # =================================================================
    # 4. 최종 결과 포맷팅 및 JSON 변환
    # =================================================================
    print("\n--- 4. 최종 결과 생성 ---")

    for months in time_horizons:
        col_name = f'{months}월후예상금액'
        df_predict[col_name] = df_predict['월_평균_예상금액'] * months

    prediction_cols = ['userId'] +  [f'{months}월후예상금액' for months in time_horizons] # 컬럼명 소문자로 변경
    final_df = df_predict[prediction_cols].round(0).astype({'userId': str}) # 금액은 정수로 반올림

    for col in final_df.columns[1:]:
        final_df[col] = final_df[col].apply(lambda x: 0 if x < 0 else int(x))

    print("\n--- 향후 기간별 구매 예측 결과 (머신러닝) ---")
    print(final_df)

    json_result = final_df.to_json(orient='split', force_ascii=False, index=False)
    print("\n--- 'records' 형식 JSON 결과 ---")
    #print(json_result)

    return json_result


#print( "# 최종 리턴할 예측 데이터 #")
print( userBuyListService( ['1', '2', '5'], [1, 2, 6, 12]))