from flask import Flask

app = Flask(__name__)

# http://localhost:9998/second
@app.route("/second")
def second():
    return "두번째 웹화면"

app.run(port=9998, debug=True)




