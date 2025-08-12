# 1. 모들 import
from flask import Flask, render_template, request, redirect
# 2. 객체 생성
app = Flask(__name__,static_url_path="") # static 폴드 지정..    , static_folder=".", 

# 3. template 안에 특정 html 파일로 호출..
#    ex) templates 하위 에 a02_call.html을 호출..
#
# http://localhost:8888/call02
@app.route("/call02")
def call02():
    return render_template("a02_call.html") # templates 폴드하에 특정 페이지 호출..

app.run(port=8888, debug=True)
