import oracledb as oci
from oracledb import DatabaseError
def dbCon():
    # DB 연동 모듈 
    # 모듈 import 처리

    # Instant Client 설치된 경로로 설정
    lib_dir_path=r"c:\a03_pythonexp\instantclient_11_2"


    # 접속
    oci.init_oracle_client(lib_dir=lib_dir_path)
    con = oci.connect("scott/tiger@localhost:1521/xe")
    print("연결확인:", con.version)
    return con
# from a11_database.a00_con import dbCon as con

#con = dbCon()