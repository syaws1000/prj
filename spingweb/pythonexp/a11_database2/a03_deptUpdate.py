import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_dto import *
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *
def deptAll():
    cursor.execute("SELECT * FROM DEPT03 ORDER BY DEPTNO")
    # 컬프리핸션으로 deptList 객체 생성
    deptList = [Dept(*row) for row in cursor.fetchall()]
    for dept in deptList:
        print(dept.deptno, end="\t")
        print(dept.dname, end="\t")
        print(dept.loc, end="\n")
try: 
    # 1. 연결
    con = dbCon()
    # 2. 커서객체 생성
    cursor = con.cursor()
    deptAll()
    # 수정 처리
    # 3. 수정할 부서번호 부서명 부서 위치 입력
    print("# 수정 데이터 입력 #")
    loc = input("부서위치:")
    # 수정할 정보
    dept = Dept(int(input("부서번호:")), input("부서명:"), input("부서위치:"))
    sqlUpt = '''
        UPDATE DEPT03
           SET DNAME = :dname,
               LOC = :loc
         WHERE DEPTNO = :deptno
    '''
    cursor.execute(sqlUpt, dept.__dict__) # 객체의 dictionary 형태로 전환 {'deptno':10,'dname':'인사',...}
    con.commit()
    # 수정내용 확인
    deptAll()       
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
