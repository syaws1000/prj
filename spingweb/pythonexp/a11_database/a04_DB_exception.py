'''
# 파이썬 데이터베이스의 예외 처리
1. 데이터베이스 프로그램은 발생할 수 있는 다양한 예외를 상황에 따라 처리하여야 합니다.
2. 기본적으로 try except else finally 구문을 사용하여 프로그램의 안정성을 높이는 방법으로 처리합니다.
3. 예외는 네트워크 오류, sql 문법 오류, 접속 정보 오류 등 다양한 예외 상황을 만나게 되고, 그 예외를 발생하더라도
  비정상적인 중단이 되지 않고 안정하게 종료되도록 설계하는 것을 목적으로 합니다.
4. 파이썬 예외의 기본 구조
    try:
      # 데이터베이스 연결, sql 실행 등 예외 발생 가능성이 있는 코드
    except Exception as err:
      # try 블럭에서 예외가 발생했을 때 실행될 코드
    else:
      # try 블럭에서 예외가 발생하지 않았을 때 실행될 코드
    finally:
      # 예외 발생 여부와 상관없이 항상 실행할 코드(주로 리소스 정리) 

'''
# ex) SELECT * FROM DEPT WHERE DNAME LIKE '%A% 부서정보를 keyword 검색으로 출력되는 내용을 처리하세요..
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import dbCon as con
try: 
    # 1. 연결
    con = con()
    # 2. 커서객체 생성
    cursor = con.cursor()
    schEname = input("검색할 사원명을 입력하세요!:")
    # 3. 수행
    sql = "SELECT * FROM EMP WHERE ENAME LIKE :keyword"  # sql injection 방식으로 위해  :keyword 처리
    keyword = f'%{schEname}%'
    cursor.execute(sql,keyword=keyword)
    empList = cursor.fetchall()
    print("# 검색된 사원 정보 #")
    print("사 번\t사원명\t직책명\t\t급여\t부서번호")
    for emp in empList:
        print(emp[0],end='\t')
        print(emp[1],end='\t')
        print(emp[2]+'   ',end='\t')
        print(emp[5],end='\t')
        print(emp[7],end='\n')
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
'''
# 기본 구조
1. 핵심 코드
    데이터베이스 작업처럼 오류 발생 가능성이 높은 코드를 안정적으로 관리하기 위해 사용
    try:
        오류가 발생할 가능성이 있는 코드를 감싸는 영역
        1
        2  발생 즉시, 해당 라인에서 예외를 except 전달..
        3

    except con.DatabaseError as e:
        DB관련 오류가 발생했을 때만 실행되는 영역
    except Exception as err:
        DB관련 이외에 예외발생시 처리되는 영역
    else:
        오류없이 모두 실행되었을 때 실행되는 영역
    finally:
        오류발생/미발생 상관없이 항상 마지막에 실행되는 영력

2. sql 바이딩 처리 
    1) sql 구문안에  :keyword는 바인딩 변수라고 부릅니다. 사용자 입력을 직업 sql문에 합치지 않고, 이렇게
      자리를 맡아두는 방식으로 사용하면 sql injection이라는 해킹 공격을 효과적으로 방어할 수 있습니다.
      ex) sql = "SELECT * FROM EMP WHERE ENAME LIKE :keyword"
    2) keywordVal= f'%{schEname}%' : 사용자가 입력한 검색어(schEname)의 양쪽에 '%'를 붙여서 like검색
       을 위한 패턴을 만듭니다. 
    3) cursor.execute(sql, keyword=keywordVal) : 커서를 통해 준비된 SQL문과 바인드 변수에 들어갈 실제값
        keyword=keyword을 데이터베이스에 전달하여 실행합니다.
3. 다양한 예외 처리 블럭
    except con.DatabaseError as e:
        oracledb와 같은 라이브러리에서 제공하는 데이터베이스 관련 오류만 전문적으로 처리하는 블럭
        sql문법이 틀렸거나, 존재하지 않는 테이블을 조회할 때 이 블럭이 실행합니다.
        사용자에게 DB에러라고 명확하게 알려줄 수 있어 좋습니다.
    except Exception as err:
        이 블럭은 위에서 잡지 못한 모든 종류의 일반적인 오류를 처리합니다.
        예를 들어, con 객체가 제대로 생성되지 않았는데 con.cursor()를 호출하는 등의 코드 논리 오류나
        네트워크 문제 등이 여기에 해당합니다.
            



'''
