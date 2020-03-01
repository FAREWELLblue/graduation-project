from flask import Flask, request, render_template
from chat_db import Database
app=Flask(__name__)

def decode_recv_data(s):
    s=s.decode()
    s=s.split('&')
    result={}
    for i in s:
        result[i.split('=')[0]]=i.split('=')[1]
    return result

# 连接数据库
db = Database()


@app.route('/')
def send():
    return render_template('index.html',name='')

@app.route('/login',methods=['POST'])
def recv_name():
    recv_data=request.get_data()
    recv_data=decode_recv_data(recv_data)
    print(recv_data)
    if recv_data['username']=='' or recv_data['password']=='':
        return render_template('/login.html', message='Empty')
    elif db.login(recv_data['username'],recv_data['password']):
        return render_template('/index.html',name=recv_data['username'],password=recv_data['password'])
    else:
        return render_template('/login.html',message='Wrong')

@app.route('/login',methods=['GET'])
def refresh():
    return render_template('/login.html', message='')

@app.route('/<file>.html',methods=['GET'])
def hello(file):
    return render_template(file+'.html')



if __name__ == '__main__':
    app.run(debug=True)

