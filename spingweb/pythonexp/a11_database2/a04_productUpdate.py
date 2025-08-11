import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_dto import *
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *
def productAll():
    cursor.execute("SELECT * FROM PRODUCT ORDER BY NO")
    prodList = [ Product(*row) for row in cursor.fetchall()]
    for prod in prodList:
        print(prod.no, end = '\t')
        print(prod.name, end =  '\t')
        print(prod.price, end = '\t')
        print(prod.cnt, end = '\n')    
try: 
    # 1. 연결
    con = dbCon()
    # 2. 커서객체 생성
    cursor = con.cursor()
    # 전체 조회
    productAll()
    # 물건 수정 처리..
    print("# 수정 정보 입력 #")
    prod = Product(int(input("번호:")),input("물건명:"), int(input("가격:")),int(input("갯수")))
    sqlUpt = '''
        UPDATE PRODUCT
        SET NAME = :name,
            PRICE = :price,
            CNT = :cnt
        WHERE NO = :no
    '''
    cursor.execute(sqlUpt, prod.__dict__)
    con.commit()
    # 전체 조회
    productAll()
   
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
