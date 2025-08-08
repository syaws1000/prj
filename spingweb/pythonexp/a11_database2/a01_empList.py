# 컴프리헨션을 이용해서 EMP 사원정보 출력..

from a11_database.a00_dto import *
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *
try: 
    # 1. 연결
    con = dbCon()
    # 2. 커서객체 생성
    cursor = con.cursor()
    # 사원정보 조회리스트 출력..
    # 3. SQL과 실행 처리
    cursor.execute("SELECT * FROM EMP")
    # 4. 컴프리핸션으로 결과 객체 List 받기..
    empList = [Emp(*row) for row in cursor.fetchall()]
    # 5. 반복문에 의해 출력..
    for emp in empList:
        print(emp.empno, end="\t")
        print(emp.ename, end="\t")
        print(emp.job, end="\t")
        print(emp.mgr, end="\t")
        print(emp.hiredate, end="\t")
        print(emp.sal, end="\t")
        print(emp.comm, end="\t")
        print(emp.deptno, end="\n")


    
    
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