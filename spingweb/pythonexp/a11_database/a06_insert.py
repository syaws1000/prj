import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import dbCon as con
def studentInfo():
    sql = "SELECT * FROM STUDENT"
    cursor.execute(sql)
    studList = cursor.fetchall()
    print('## 학생 성적 정보 #')
    print('번호\t이름\t국어\t영어\t수학')
    for stud in studList:
        print(stud[0], end='\t')
        print(stud[1], end='\t')
        print(stud[2], end='\t')
        print(stud[3], end='\t')
        print(stud[4], end='\n')
try: 
    # 1. 연결
    con = con()
    # 2. 커서객체 생성
    cursor = con.cursor()    
    studentInfo()
    # 등록할 데이터 입력 처리
    print("# 학생 성적 정보 입력 #")
    name = input("이름을 입력:")
    kor = int(input("국어점수를 입력:"))
    eng = int(input("영어점수를 입력:"))
    math = int(input("수학점수를 입력:")) 

    # 3. sql inject 방지 - 준비된 binding sql 처리
    sql = f'INSERT INTO STUDENT VALUES(STUDENT_SEQ.NEXTVAL,:1,:2,:3,:4)'
    cursor.execute(sql, (name,kor,eng,math) ) # 순서별로 :1에는 name 매핑 입력..
    # 4. 입력된 내용 확정(등록, 수정, 삭제)
    con.commit()
    studentInfo()
except con.DatabaseError as e:
    print(f"[DB 에러] 데이터 처리 중 오류가 발생했습니다: {e}")
    # print("[상세 정보]", sys.exc_info()) # 디버깅 시 상세 정보 확인용        
    con.rollback() # 에러발생시 rollback처리..
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
# 등록 처리 프로세스
1. 데이터 입력 : 사용자에게 프롬프트 메시지를 보여주고, 학생의 이름과 국어, 영어, 수학 점수를 차례로 입력 받습니다.
   ex) name = input("이름 입력:")
       kor = int(input("국어 입력:))
       ..
2. 데이터 타입 변환 : 입력 받은 점수(문자열)를 int() 함수를 통해 즉시 정수형 숫자로 변환합니다. 만약 사용자가 숫자가
   아닌 값을 입력하면 이 단계에서 ValueError가 발생하며 프로그램이 중단됩니다.
3. 안전한 SQL 준비 : 데이터베이스에서 데이터를 추가하기 위한 insert sql 명령문을 준비합니다. 이때, 시퀀스를 사용하여
   학생번호를 생성하고, 바인딩 변수를 사용하여 sql 인젝션 공격을 방어합니다.
   sql = f'INSERT INTO STUDENT VALUES(STUDENT_SEQ.NEXTVAL,:1,:2,:3,:4)'  바인딩할 순서 지정 :1, :2
   cursor.execute(sql, (name,kor,eng,math) ) # 순서별로 :1에는 name 매핑 입력, :2에는 kor 매핑 입력, :3에는 eng 매핑, :4에는 math 매핑
4. 명령 실행 : 준비된 SQL문과 사용자가 입력한 데이터를 cursor.execute()메소드를 통해 데이터베이스에 전달합니다.
   데이터베이스 드라이버가 데이터를 안전하게 처리하여 SQL을 실행합니다.
5. 변경 사항 확정 : con.commit() 을 호출하여, 새로 추가된 학생 정보를 데이터베이스에 영구적으로 저장(확정)합니다.
위 프로세스는 데이터준비 ==> 안전한 명령 생성 ==> 실행 ==> 확정의 안정적인 데이터베이스 처리 흐름을 따르고 있습니다.


'''    

