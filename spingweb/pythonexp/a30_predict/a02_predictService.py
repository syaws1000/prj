import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import json
import matplotlib.font_manager as fm
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


    # 3. 기간별 미래 구매 예측
    #time_horizons = [1, 2, 6, 12] # 예측할 기간 (개월)
    for months in time_horizons:
        col_name = f'{months}월후예상금액'
        # 예측 공식: 월간 구매 빈도 * 평균 구매 가치 * 예측 개월 수
        df[col_name] = df['월간_구매_빈도'] * df['평균_구매_가치'] * months

    # 예측 결과 출력
    prediction_cols = ['고객_ID'] + [f'{months}월후예상금액' for months in time_horizons]
    print("--- 향후 기간별 구매 예측 결과 ---")
    print(df[prediction_cols].round(2))


    print("## 최종 예측 ###")
# '고객_ID'를 인덱스로 설정
    '''
    df.set_index('고객_ID', inplace=True)

    # 월별 예상금액 컬럼만 선택
    monthly_data = df[['1월_예상금액', '2월_예상금액', '6월_예상금액', '12월_예상금액']]

    # 컬럼명을 '월'로 변경
    monthly_data.columns = ['1월', '2월', '6월', '12월']

    # 각 고객 ID별로 월별 데이터를 딕셔너리로 변환
    result_dict = monthly_data.to_dict(orient='index')

    # JSON으로 변환
    json_output = json.dumps(result_dict, ensure_ascii=False, indent=4)

    print(json_output)    

    
    '''
    print(df)
    
    list = df[prediction_cols].round(2)
    print("--- 'split' 형식 ---")
    # 
    json_split = list.to_json(orient='split', force_ascii=False)
    print(json_split)
    
    

    return json_split


#print( "# 최종 리턴할 예측 데이터 #")
print( userBuyListService( ['1', '3', '5'], [1, 2, 6, 12]))