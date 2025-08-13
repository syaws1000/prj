# 1. 모들 import
from flask import Flask, render_template, request, redirect
from a13_webProject.d01_dao import *
from a13_webProject.z01_dto import *

# 2. 객체 생성
app = Flask(__name__, static_url_path="") # static 폴드 지정..

# 3. template 안에 특정 html 파일로 호출..
'''
# http://localhost:8888/empList
@app.route("/empList", methods=['get','post'])
def empList():
    schOb = Emp(0,request.values.get("ename",""),request.values.get("job",""),0,None,0,0,0)
    empList = empListAll() #empListFun(schOb)
    return render_template("a11_empList.html", sch = Emp, list=empList) # templates 폴드하에 특정 페이지 호출..
'''



# http://localhost:8888/empList
@app.route("/empList", methods=['get','post'])
def empList():
    schOb = Emp(0,request.values.get("ename",""),request.values.get("job",""),0,None,0,0,0)
    empList = empListFun(schOb)
    return render_template("a11_empList.html", sch = schOb, list=empList) # templates 폴드하에 특정 페이지 호출..


from datetime import datetime
# http://localhost:8888/empInsert
@app.route("/empInsert", methods=['get','post'])
def empInsert():
    msgStr = ""
    if request.method == "POST":
        hiredate_str = request.values.get('hiredate') # 예: '2025-08-13'
        hiredate_obj = datetime.strptime(hiredate_str, '%Y-%m-%d').date()
        emp = Emp(
                int(request.values.get("empno")),
                request.values.get("ename"),
                request.values.get("job"),
                int(request.values.get("mgr")),
                hiredate_obj,
                float(request.values.get("sal")),
                float(request.values.get("comm")),
                int(request.values.get("deptno")) )
        msgStr = empInsertFun(emp)
    return render_template("a12_empInsert.html",msg = msgStr) # templates 폴드하에 특정 페이지 호출..





app.run(port=8888, debug=True)