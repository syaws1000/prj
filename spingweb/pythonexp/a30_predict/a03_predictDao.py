import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *
import pandas as pd
from a30_predict.a04_predictDto import Predict
# from a30_predict.a03_predictDao import *
def userBuyListFun(id_list):
    buyList = None;    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()

        placeholders = ','.join([f':{i+1}' for i in range(len(id_list))])
        
        # 3. 생성된 플레이스홀더를 쿼리문에 삽입
        query = f"SELECT * FROM PREDICT WHERE USER_ID IN ({placeholders})"
        
        # 4. 플레이스홀더 이름과 실제 값을 딕셔너리로 매핑 (예: {'1': 1, '2': 3, ...})
        params = {str(i+1): val for i, val in enumerate(id_list)}
        
        print(f"실행될 쿼리: {query}")
        print(f"매핑될 파라미터: {params}")
        # sch.dname이 None이면 ''으로 처리 후, 양옆에 '%'처리
        sql =  f"SELECT * FROM PREDICT WHERE USER_ID IN ({placeholders})"
        cursor.execute(sql, params)
        buyList = [Predict(*row) for row in cursor.fetchall()]

    except DatabaseError as e:
        print(f"[DB 에러] 데이터 처리 중 오류가 발생했습니다: {e}")
        # print("[상세 정보]", sys.exc_info()) # 디버깅 시 상세 정보 확인용        
    except Exception as err:
        print("[일반에러발생1]:", err)
        print("[에러발생2]:", sys.exc_info()) # 시스템 에러 정보 출력
    else:
        print("정상 처리 완료")    
    finally:
        if con is not None:
            con.close()
        print("접속 종료")   
    return buyList 


def userBuyListFun2(id_list):
    id_list = ['1', '3', '5']
    # 1. 입력값 유효성 검사
    # id_list가 비어있거나 리스트가 아니면, 오류 메시지 출력 후 빈 DataFrame 반환
    if not id_list or not isinstance(id_list, list):
        print("[입력값 오류] 조회할 고객 ID를 리스트 형태로 전달해야 합니다.")
        return pd.DataFrame()

    df = pd.DataFrame() # 초기에 빈 데이터프레임으로 초기화
    con = None          # finally 절에서 사용하기 위해 try 블록 전에 선언

    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()

        # 2. Oracle용 플레이스홀더를 ID 개수만큼 동적으로 생성 (예: ':1, :2, :3')
        placeholders = ','.join([f':{i+1}' for i in range(len(id_list))])
        
        # 3. 생성된 플레이스홀더를 쿼리문에 삽입
        query = f"SELECT * FROM PREDICT WHERE USER_ID IN ({placeholders})"
        
        # 4. 플레이스홀더 이름과 실제 값을 딕셔너리로 매핑 (예: {'1': 1, '2': 3, ...})
        params = {str(i+1): val for i, val in enumerate(id_list)}
        
        print(f"실행될 쿼리: {query}")
        print(f"매핑될 파라미터: {params}")

        # 5. 수정된 쿼리와 파라미터(딕셔너리)를 전달하여 실행
        df = pd.read_sql_query(query, con, params=params)


        

    except DatabaseError as e:
        print(f"[DB 에러] 데이터 처리 중 오류가 발생했습니다: {e}")
        # print("[상세 정보]", sys.exc_info()) # 디버깅 시 상세 정보 확인용        
    except Exception as err:
        print("[일반에러발생1]:", err)
        print("[에러발생2]:", sys.exc_info()) # 시스템 에러 정보 출력
    else:
        print("정상 처리 완료")    
    finally:
        if con is not None:
            con.close()
        print("접속 종료")   
    return df

print( userBuyListFun( ['1', '3', '5']))