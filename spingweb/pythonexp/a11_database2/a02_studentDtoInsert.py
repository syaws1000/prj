import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_dto import *
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *
try: 

    studDto = Student(0,input("이름입력:"),int(input("국어:")),int(input("영어:")),int(input("수학:")))
    # 1. 연결
    con = dbCon()
    # 2. 커서객체 생성
    cursor = con.cursor()
    # 3. 커서를 통해서 sql 문 실행
    insSql = "INSERT INTO student values(:no+student_seq.nextval,:name,:kor,:eng,:math)"
    # {name:"홍길동",kor:70,...} 로 key:val 형식으로 데이터를 입력 처리할 수 있다.
    # obj.__dic__  : 객체의 속성:속성값을 위 dictionary형식을 변환해준다.
    print(studDto.__dict__)

    cursor.execute(insSql, studDto.__dict__)
    con.commit()

    
except DatabaseError as e:
    print(f"[DB 에러] 데이터 처리 중 오류가 발생했습니다: {e}")
    print("[상세 정보]", sys.exc_info()) # 디버깅 시 상세 정보 확인용        
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
# dto를 통한 등록 처리 #
1. 사용자로부터 등록할 정보를 키보드로 입력받아, 이것을 Dto객체에 생성자를 통해서 처리하고,
   해당 Dto객체를 새로운 데이터 행에 등록 처리하는 프로그램
2. 등록 개요
    1) 정보 입력 : 사용자에게 부서번호, 부서명, 부서위치를 차례대로 입력하라는 안내 메시지를 보여주고
        값을 입력
        deptno = int(input("부서번호:"))
        dname = input("부서명:")
        loc = input("부서위치:")
    2) 입력받은 세 개의 값을 사용하여 Dept 클래스의 새로운 인스턴스(객체)인 inDept를 생성합니다.
        inDept = Dept(deptno, dname, loc)
    3) sql 실행 : dept03 테이블의 값을 삽입하는 INSERT SQL문을 inDept 객체에 저장된 데이터와
        함께 실행 합니다.
        cursor.execute("INSERT INTO DEPT03 VALUES(:1,:2,:3)", (inDept.deptno,inDept.dname,inDept.loc))
    4) 최종 저장 : 실행한 데이터 변경 사항을 데이터베이스에 영구적으로 반영(commit)합니다.    




'''