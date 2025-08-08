'''
# 환경 설정.
1.  oracle instantclient 압축파일  다운로드
    특정 폴드에 압축풀기
2.  운영체제 path 설정..

    c:\a03_pythonexp\instantclient_11_2
pip install oracledb
'''
# 모듈 import 처리
import oracledb as oci
# Instant Client 설치된 경로로 설정
lib_dir_path=r"c:\a03_pythonexp\instantclient_11_2"


# 접속
oci.init_oracle_client(lib_dir=lib_dir_path)
con = oci.connect("scott/tiger@localhost:1521/xe")
print("연결확인:", con.version)
# 커서 생성 : sql 처리 및 결과값을 받는 객체..
cursor = con.cursor()
# 실행할 sql 선언
sql = 'SELECT * FROM EMP'
# 실행 처리 
cursor.execute(sql)
# 1. 예제로 단일 결과값 1행을 받는 처리 결과..(duple 형태 - 읽기전용)
emp = cursor.fetchone()
print("# 하나의 결과값 받은 내용 #")
print(emp)
emp = cursor.fetchone()
print("# 하나의 결과값 받은 내용 #")
print(emp)
# 2. sql의 전체 데이터를 받는 내용
print("# 전체 결과 처리 #")
empList = cursor.fetchall()
print(empList)



# 접속 종료
con.close()
'''
1. 파이썬은 oracledb 라이브러리를 사용하여 오라클 데이터베이스에 접속하고, EMP테이블의 데이터를 조회하는 처리를 합니다.
2. oracledb의 Thick모드를 사용하여 데이터베이스에 연결하는 방식을 보여줍니다. Thick모드는 스크립트가
   실행하는 환경에 Oracle Instant Client가 설치되어 있어야 하면, 코드에서 해당 클라이언트의 경로를 직접
   지정하여 초기화합니다.
3. 데이터를 가져오는 방식으로 한 행씩 가져오는 fetone()과 나머지 모든 행을 한 번에 가져오는 fetchall()을 순차적으로
   사용하여 두 메시드의 동작 방식을 이해할 수 있도록 구성하였습니다.
4. 핵심 코드
    1) Thick 모드 초기화
       oci.init_oracle_client(lib_dir=lib_dir_path) : 설치된 경로로 지정하여 초기화
       oracledb가 instant client라이브러리(oci.dll등) 찾을 수 있도록 해당 폴더 경로 init_oracle_client()
       함수를 통해 명시적으로 지정합니다.(자바로 비유하면 jdbc 드라이버를 말한다. 윈도우 환경에서 필요한 dll파일 설정)
    2) 데이터베이스 접속
        con = oci.connect("scott/tiger@localhost:1521/xe)
        계정/비번호@DB서버접속ip:port/DB명
    3) SQL 실행
        cursor = con.cursor()
        cursor.execute("SELECT * FROM EMP")
        커서 생성 실행 : 생성된 연결 객체로부터 sql를 실행하고 결과를 처리할 수 있는 커서(cursor)객체를 얻습니다.
        SELECT문은 커서를 통해 데이터베이스에 전송하여 실행. 결과 데이터를 아직 파이썬 메모리로 넘어오지 
        않고, db 서버에 준비된 상태입니다.
    4) 데이터 인출(한 행씩/전체 행)
        emp = cursor.fetchone() : 한행씩 인출하여 emp에 할당한다(튜플형태)
        emp = cursor.fetchone() : 위에 인출된 이후로, 한행씩 인출하여 emp에 할당한다(튜플형태)
        empList = cursor.fetchall() : 위에 인출된 이후로, 모든 데이터를 인출하여 empList할당(배열형 튜플)
    5) 접속 종료  : 모든 작업이 끝난 후, con.close()를 호출하여 데이터베이스와의 연결을 안전하게 종료하고
                   리소스를 반환합니다.
        con.close()    


'''
