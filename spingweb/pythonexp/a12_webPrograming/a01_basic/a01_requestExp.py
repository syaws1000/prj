# 1. 모들 import
from flask import Flask, render_template, request, redirect
# 2. 객체 생성
app = Flask(__name__, static_url_path="", template_folder='../templates') # static 폴드 지정..

# 3. template 안에 특정 html 파일로 호출..
# http://localhost:8888/req_ex?name=hong&age=25
# http://localhost:8888/req_ex?name=hong
# http://localhost:8888/req_ex
@app.route("/req_ex")
def req_ex():
    
    nameVal = request.args.get("name")
    ageVal = int(request.args.get("age","0"))
    print("이름:", nameVal)
    print("나이:", ageVal)
    
    return render_template("a01_basic/a01_basic.html", name=nameVal, age=ageVal) # templates 폴드하에 특정 페이지 호출.. , name=nameVal, age=ageVal

app.run(port=8888, debug=True)
