'''
# 파이썬에서 dto 활용하여 데이터 처리
1. DTO
    우리말로 데이터 전송 객체입니다. 이름 그대로, 시스템의 각 계층(Layer)사이에서 데이터를 주고받을 때 사용하는
    규격화된 상자라고 생각하면 쉽습니다.
    예를들어, 사용자가 웹사이트에서 입력한 데이터를 서버로 보낼 때, 또는 서버가 데이터베이스에서 가져온 데이터를
    사용자에서 보여줄 때, 이 데이터들을 DTO라는 정해진 형식의 상자에 담아서 전달하는 것이죠.
    1) DTO를 사용하는 이유
        - 관심사의 분리(Separation of Concerns)
            데이터베이스 모델(ORM객체)과 API 명세를 분리할 수 있습니다. 데이터베이스 테이블 구조가 변경되더라도
            API를 통해 외부로 노출되는 데이터 형식은 DTO를 통해 그대로 유지할 수 있어 유연하고 안정적인 시스템을
            만들 수 있습니다. 예를 들어, 데이터베이스에는 비밀번호 해시값이 저장되어 있지만, API응답으로는
            이 값을 제외하고 데이터를 보낼 수 있습니다.
        - 명확한 데이터 구조 정의
            API가 어떤 데이터를 받고 어떤 데이터를 반환하는지 DTO클래스만 봐도 명확하게 알 수 있습니다.
            이는 코드 가독성을 높이고 다른 개발자와의 협업을 원활하게 합니다.
        - 유효성 검사
            DTO를 사용하면 시스템으로 들어오는 데이터의 타입, 형식, 필수값 여부 등을 비지니스 로직을 처리하기
            전에 미리 검증할 수 있습니다. 예를 들어, 이메일 필드에 실제 이메일 형식이 들어왔는지, 나이 필드에
            숫자가 들어왔는지 등을 자동으로 확인 할 수 있습니다.
2. 개발 순서
    1) 데이터 베이스 모델 정의
        데이터베이스에 어떤 테이블과 컬럼이 있는지 ORM(SQL)을 사용해 파이썬 클래스로 정의합니다.
        이것이 DTO의 실제 저장 형태입니다.
    2) DTO 클래스 생성
        데이터를 주고받을 목적에 맞게 여러 DTO 클래스를 맞듭니다. 
        UserCreate : 사용자 생성을 위해 클라이언트로부터 받을 데이터 구조
        UserUpdate : 사용자 정보 수정을 위해 받을 데이터 구조
        UserRead : 클라이언트에서 보여주 사용자 데이터 구조
        ex)
        특정 패키지에 선언 호출 : from 패키지명.dto모듈명 import 사용할DTO
        @dataclass
        class Dept:
            @dataclass가 __init__, 등 자동을 만들어 줍니다.
            deptno : int
            dname : str
            loc : str

    3) CRUD 로직 구현
        데이터베이스 모델과 DTO를 활용하여 실제 CRUD 기능을 하는 함수들을 만듭니다.
        Create : UserCreate DTO를 입력받아 데이터베이스 모델로 변환한 후 DB에 저장합니다.
        Read : DB에서 데이터베이스 모델을 조회한후, UserREead DTO로 변환하여 반환합니다.
        Update : UserUpdate DTO를 받아 DB에서 해당 데이터를 찾아 수정합니다.
        Delete : ID를 받아 DB에 해당 데이터를 삭제합니다.
        ex)
        from a11_database.a00_dto import Dept
        dept = Dept(deptno=10, name='인사', loc='성남') # 단일 데이터 처리..- 객체 생성

        deptRow = cusor.fetchone()        
        dept_dto = Dept(*deptRow)  # 단일데이터를 가져왔을 때, *(생성자의 매개변수가 가변적일 때 사용되는 형태)

        dupDeptList = cursor.fetchall()
        deptList = []
        for data in dupDeptList:
            //dept1 = Dept(deptno=data[0], name=data[1], loc=data[2])
            dept1 = Dept(*data)  // 객체를 축약 형태로 처리..
            deptList.append(dept1)
        ==>
        deptList = [Dept(*row) for row in cursor.fetchall() ]  # Dept 객체형 리스트가 한번에 만들어 진다.




    4) API 또는 서비스에서 활용
        구현된 CRUD로직을 실제 웹 프레이원크(Flask)의 API핸들러나 서비스 로직에 호출하여 사용합니다.

'''
# 데이터 베이스 내용을 DTO할 당하여 처리하는 내용..
from a11_database.a00_dto import *
import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import *
def deptList():
    cursor.execute("SELECT * FROM dept03")
    # 3. 컴프리핸션으로 deptList 객체 생성.
    deptList = [Dept(*row) for row in cursor.fetchall()]
    #print(deptList)
    for dept in deptList:
        print(dept.deptno, end='\t')
        print(dept.dname, end='\t')
        print(dept.loc, end='\n')


try: 
    # 1. 연결
    con = dbCon()
    # 2. 커서객체 생성
    cursor = con.cursor()
    # 3. sql 처리 및 실행
    #    입력 전 검색 처리
    deptList()
    print("# 부서 정보를 입력 #")
    inDept = Dept( int(input("부서번호를 입력:")), input("부서명을 입력:") , input("부서위치를 입력:")) 
#    sqlIns = "INSERT INTO dept03 values(:1,:2,:3)"

#    cursor.execute(sqlIns,(inDept.deptno, inDept.dname, inDept.loc) )
    sqlIns = "INSERT INTO dept03 values(:deptno,:dname,:loc)"
    cursor.execute(sqlIns,inDept.__dict__ )
    con.commit()


    #    입력 후 검색 처리
    deptList()
    
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