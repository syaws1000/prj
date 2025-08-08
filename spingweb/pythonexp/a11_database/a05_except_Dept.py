import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import dbCon as con
try: 
    # 1. 연결
    con = con()
    # 2. 커서객체 생성
    cursor = con.cursor()
    schDname = input("검색할 부서명을 입력하세요!:")
    # 3. 수행
    sql = "SELECT * FROM DEPT WHERE DNAME LIKE :key"  # sql injection 방식으로 위해  :keyword 처리
    keywordVal = f'%{schDname}%'
    cursor.execute(sql,key=keywordVal)
    deptList = cursor.fetchall()
    print("# 검색된 부서 정보 #")
    print("부서번호\t부서명\t\t부서위치")
    for dept in deptList:
        print(dept[0],end='\t\t')
        print(dept[1]+'   ',end='\t')
        print(dept[2],end='\n')
except con.DatabaseError as e:
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
