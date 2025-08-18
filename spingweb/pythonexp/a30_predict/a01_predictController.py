# 1. 모들 import
from flask import Flask, render_template, request, jsonify, redirect
from a13_webProject.d01_dao import *
from a13_webProject.z01_dto import *
from a30_predict.a02_predictService import *
from flask_cors import CORS
# pip install flask-cors

# 2. 객체 생성
app = Flask(__name__, static_url_path="") # static 폴드 지정..
CORS(app) # 모든 출처 허용

# http://localhost:8888/predict
@app.route("/predict", methods=['GET',"POST"])
def post_data():
    # 클라이언트가 보낸 JSON 데이터를 파이썬 딕셔너리로 받기 (옵션)
    # 만약 클라이언트가 데이터를 보내지 않으면 에러가 발생할 수 있으므로 예외처리하는 것이 좋습니다.
    try:
        received_data = request.get_json()
        print("클라이언트로부터 받은 데이터:", received_data)
        # 받은 데이터에 기반한 로직 처리
        # 예: received_data['name']
    except:
        print("클라이언트로부터 받은 데이터 없음")


    # 클라이언트에게 반환할 데이터 (Python Dictionary)
    response_data = {
        "status": "success",
        "message": "데이터를 성공적으로 처리했습니다.",
        "data": {
            "id": 100,
            "name": "마길동",
            "roles": ["admin", "user"]
        }
    }
    
    # jsonify 함수를 사용하여 딕셔너리를 JSON 응답 객체로 변환하여 반환
    #return jsonify(userBuyListService( ['1', '3', '5'], [1, 2, 6, 12]))
    #    #return userBuyListService( ['1', '3', '5'], [1, 2, 6, 12]) #jsonify(response_data)
    return userBuyListService( received_data['id'], received_data['month'] ) #jsonify(response_data)
   




app.run(port=8888, debug=True)
