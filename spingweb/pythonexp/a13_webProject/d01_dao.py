import sys # 여러가지 system 데이터 처리 가능 모듈
from a13_webProject.z01_dto import *
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *



try: 
    # 1. 연결
    con = dbCon()
    # 2. 커서객체 생성
    cursor = con.cursor()

    
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

def deptListAll():
    deptList = None;    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()
        cursor.execute("SELECT * FROM DEPT01 ORDER BY DEPTNO")
        deptList = [Dept(*row) for row in cursor.fetchall()]
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
    return deptList 


def deptListFun(sch):
    deptList = None;    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()

        params = {
            'dname':f"%{sch.dname or ''}%",   
            'loc':f"%{sch.loc or ''}%"
        }
        # sch.dname이 None이면 ''으로 처리 후, 양옆에 '%'처리
        sql = '''
            SELECT * 
            FROM DEPT01 
            WHERE DNAME LIKE :dname
            AND LOC LIKE :loc
            ORDER BY DEPTNO
        '''
        cursor.execute(sql, params)
        deptList = [Dept(*row) for row in cursor.fetchall()]

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
    return deptList 


def deptInsertFun(dept):
    msg = "등록실패";    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()

        # 
        sql = '''
          INSERT INTO DEPT01 VALUES(:deptno, :dname, :loc)  
        '''
        cursor.execute(sql, dept.__dict__)
        con.commit()
        msg = "등록성공"

    except DatabaseError as e:
        print(f"[DB 에러] 데이터 처리 중 오류가 발생했습니다: {e}")
        # print("[상세 정보]", sys.exc_info()) # 디버깅 시 상세 정보 확인용 
        con.rollback()       
    except Exception as err:
        print("[일반에러발생1]:", err)
        print("[에러발생2]:", sys.exc_info()) # 시스템 에러 정보 출력
    else:
        print("정상 처리 완료")    
    finally:
        if con is not None:
            con.close()
        print("접속 종료")   
    return msg 







def empListAll():
    empList = None;    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()
        cursor.execute("SELECT * FROM EMP01 ORDER BY EMPNO")
        empList = [Emp(*row) for row in cursor.fetchall()]
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
    return empList 


def empListFun(sch):
    empList = None;    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()
        params = {
            "ename":f"%{sch.ename or ''}%",
            "job":f"%{sch.job or ''}%"
        }
        sql = '''
            SELECT * 
            FROM EMP01 
            WHERE ENAME LIKE :ename
            AND JOB LIKE :job
            ORDER BY EMPNO
        '''
        cursor.execute(sql, params)
        empList = [Emp(*row) for row in cursor.fetchall()]
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
    return empList 



def empInsertFun(emp):
    msg = "등록실패";    
    try: 
        # 1. 연결
        con = dbCon()
        # 2. 커서객체 생성
        cursor = con.cursor()

        # 
        sql = '''
            INSERT INTO EMP01 VALUES (:empno, :ename, :job, :mgr, :hiredate, :sal, :comm, :deptno)
        '''
        cursor.execute(sql, emp.__dict__)
        con.commit()
        msg = "등록성공"

    except DatabaseError as e:
        print(f"[DB 에러] 데이터 처리 중 오류가 발생했습니다: {e}")
        # print("[상세 정보]", sys.exc_info()) # 디버깅 시 상세 정보 확인용 
        con.rollback()       
    except Exception as err:
        print("[일반에러발생1]:", err)
        print("[에러발생2]:", sys.exc_info()) # 시스템 에러 정보 출력
    else:
        print("정상 처리 완료")    
    finally:
        if con is not None:
            con.close()
        print("접속 종료")   
    return msg 
