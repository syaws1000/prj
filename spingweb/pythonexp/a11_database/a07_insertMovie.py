import sys # 여러가지 system 데이터 처리 가능 모듈
from a11_database.a00_con import dbCon as con
def movieInfo():
    sql = "SELECT * FROM MOVIE ORDER BY MOVIE_ID"
    cursor.execute(sql)
    movieList = cursor.fetchall()
    print('## 영화 정보 #')
    print('아이디\t타이틀\t쟝르')
    for movie in movieList:
        print(movie[0], end='\t')
        print(movie[1], end='\t')
        print(movie[2], end='\n')
try: 
    # 1. 연결
    con = con()
    # 2. 커서객체 생성
    cursor = con.cursor()    
    movieInfo()
    # 등록할 데이터 입력 처리
    print("# 영화 성적 정보 입력 #")
    title = input("영화명 입력:")
    genre = input("영화쟝르 입력:") 

    # 3. sql inject 방지 - 준비된 binding sql 처리
    sql = f'INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,:1,:2)'
    cursor.execute(sql, (title,genre) ) # 순서별로 :1에는 name 매핑 입력..
    # 4. 입력된 내용 확정(등록, 수정, 삭제)
    con.commit()
    movieInfo()
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


'''    

