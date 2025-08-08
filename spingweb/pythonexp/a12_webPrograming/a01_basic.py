'''
# 파이썬에서 웹 개발환경으로 프로그래밍 처리
1. 웹개발 환경
   1) flask 모듈 import 및 웹서버 실행 코드
    pip install flask
       
   2) url 요청 메서드 선언
   3) html 구현(html코드, css, javascript 포함)
   4) 요청값 처리
   5) 요청값 처리에 의해서 받은 내용 DB 호출
   6) 화면 호출 처리..
2. 공통 처리 순서
   1) flask 모듈 import
   from flask import Flask
'''
# 1. 모듈 호출..
from flask import Flask
# 2. Flask 객체 생성..
app = Flask(__name__, static_folder=".", static_url_path="") 
# 3. 호출한 url패턴으로 지정된 데이터 출력/페이지 출력..
#    http://127.0.0.1:9999/start
@app.route("/start")
def start():
    return "파이썬으로 웹 화면 호출시작"

#    http://127.0.0.1:9999/start2
@app.route("/start2")
def start2():
    return "파이썬으로 두번째 웹 화면 호출시작"
# ex) start3 웹화면 처리됩니다.   a02_second.py 출력되게 하세요..


# html 파일 호출 로딩 처리..
# http://127.0.0.1:9999/call
@app.route("/call")
def calling():
    return app.send_static_file("a01_webPage.html")



# 4. 웹서버 port 지정
app.run(port=9999, debug=True)
#  http://127.0.0.1:9999
