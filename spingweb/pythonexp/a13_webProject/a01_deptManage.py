# 1. 모들 import
from flask import Flask, render_template, request, redirect
from a13_webProject.d01_dao import *
from a13_webProject.z01_dto import *

# 2. 객체 생성
app = Flask(__name__, static_url_path="") # static 폴드 지정..

# 3. template 안에 특정 html 파일로 호출..
# http://localhost:8888/deptList
@app.route("/deptList", methods=['get','post'])
def deptList():
   schOb = Dept(0,request.values.get("dname",""),request.values.get("loc",""))
   deptList = deptListFun(schOb)
   return render_template("a01_deptList.html",sch=schOb, dlist = deptList) # templates 폴드하에 특정 페이지 호출..

# http://localhost:8888/deptInsert
@app.route("/deptInsert", methods=['get','post'])
def deptInsert():
   msgStr = ""
   if request.method == "POST":
      dept = Dept(int(request.values.get("deptno","0")),request.values.get("dname",""),request.values.get("loc",""))
      msgStr = deptInsertFun(dept)
   return render_template("a02_deptInsert.html",msg = msgStr) # templates 폴드하에 특정 페이지 호출..


app.run(port=8888, debug=True)
