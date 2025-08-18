from flask import Flask, render_template
from flask_socketio import SocketIO, send, join_room, leave_room
from a15_chatbot.a12_chatbot import chatbot2
app = Flask(__name__)
socketio = SocketIO(app)
# http://localhost:5000/chatbot
# 기본 채팅 페이지
@app.route('/chatbot')
def index():
    return render_template('index.html')

# 방에 참여
@socketio.on('join')
def on_join(data):
    username = data['username']
    room = data['room']
    join_room(room)
    send(f'{username} has entered the room.', room=room)

# 방을 떠날 때
@socketio.on('leave')
def on_leave(data):
    username = data['username']
    room = data['room']
    leave_room(room)
    send(f'{username} has left the room.', room=room)





# 메시지 받기
@socketio.on('message')
def handle_message(msg):
    print(f"Message: {msg}")
    send(msg, broadcast=True)  # 모든 사용자에게 메시지 전송
    result = chatbot2(msg)
    send(result, broadcast=True)  # 모든 사용자에게 메시지 전송

if __name__ == '__main__':
    socketio.run(app, debug=True)
