# 1. 모들 import
from flask import Flask, render_template, request, redirect
from a11_database.a00_dto import *
# 2. 객체 생성
app = Flask(__name__, static_url_path="") # static 폴드 지정..

# 3. template 안에 특정 html 파일로 호출..
# http://localhost:8888/reqexp
@app.route("/reqexp", methods=["GET","POST"])  # 한번에 get방식과 post방식 처리
def reqexp():
    movieOb = None
    if request.method == "POST":
        movieOb = Movie(request.values.get("title"),request.values.get("director"),request.values.get("year"))
    return render_template("a01_basic/a04_movie.html", movie=movieOb) # templates 폴드하에 특정 페이지 호출..

class Member:
    ## 생성자 선언
    def __init__(self, id, pwd, name, auth, point):
        self.id = id
        self.pwd = pwd
        self.name = name
        self.auth = auth
        self.point = point
        

# http://localhost:8888/memberreg   a01_basic/a05_memberReg.html
@app.route("/memberreg", methods=["GET","POST"])  # 한번에 get방식과 post방식 처리
def memberReg():
    memOb = None
    if request.method == "POST":
        memOb = Member(request.values.get("id"),request.values.get("pwd"),
                       request.values.get("name"),request.values.get("auth"),request.values.get("point"))
    return render_template("a01_basic/a05_memberReg.html", mem=memOb) # templates 폴드하에 특정 페이지 호출..


app.run(port=8888, debug=True)
