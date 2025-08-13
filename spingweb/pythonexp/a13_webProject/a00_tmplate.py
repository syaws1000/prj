# 1. 모들 import
from flask import Flask, render_template, request, redirect
from a13_webProject.d01_dao import *
from a13_webProject.z01_dto import *
# 2. 객체 생성
app = Flask(__name__, static_url_path="") # static 폴드 지정..

# 3. template 안에 특정 html 파일로 호출..
# http://localhost:8888/start
@app.route("/start")
def start():
    return render_template("a01_page01.html") # templates 폴드하에 특정 페이지 호출..
app.run(port=8888, debug=True)
