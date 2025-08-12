# 1. 모들 import
from flask import Flask, render_template, request, redirect
# 2. 객체 생성
app = Flask(__name__, static_url_path="") # static 폴드 지정..

# 3. template 안에 특정 html 파일로 호출..
# http://localhost:8888/req_ex?name=hong&age=25
# http://localhost:8888/req_ex?name=hong
# http://localhost:8888/req_ex
@app.route("/req_ex")
def req_ex():
    
    nameVal = request.args.get("name", "") # default 값 ""
    ageVal = int(request.args.get("age","0"))
    print("이름:", nameVal)
    print("나이:", ageVal)
    
    return render_template("a01_basic/a01_basic.html", name=nameVal, age=ageVal) # templates 폴드하에 특정 페이지 호출.. , name=nameVal, age=ageVal

# http://localhost:8888/product?name=바나나&price=3000&cnt=5
# http://localhost:8888/product?name=사과
# http://localhost:8888/product
# a01_basic/a02_buy.html
@app.route("/product")
def product():
    nameVal = request.args.get("name","")
    priceVal = int( request.args.get("price","0"))
    cntVal = int( request.args.get("cnt","0"))
    print("물건명:", nameVal)
    print("가격:", priceVal)
    print("갯수:", cntVal)
    return render_template("a01_basic/a02_buy.html", name=nameVal, price=priceVal,cnt=cntVal)


# get방식으로 화면 호출
# http://localhost:8888/person   
@app.route("/person")
def person():
    return render_template("a01_basic/a03_person.html")
# post방식으로 데이터 전송 처리..
@app.route("/person", methods=['post'])
def personPost():
    # request.values.get("ename") :
    # 1. get방식으로 요청값 받을 때: request.form.get("ename"), 
    # 2. post방식으로 요청값 받을 때: request.args.get("ename") 포함..
    nameVal = request.values.get("name","")
    ageVal = int(request.values.get("age","0"))
    locVal = request.values.get("loc","")
    print("### 이름:", nameVal)
    ##print(request.json())

    return render_template("a01_basic/a03_person.html",name=nameVal, age=ageVal, loc=locVal)



app.run(port=8888, debug=True)