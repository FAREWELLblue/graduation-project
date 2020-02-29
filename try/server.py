from flask import Flask, request, render_template
import pymysql
app=Flask(__name__)

def decode_recv_data(s):
    s=s.decode()
    s=s.split('&')
    result={}
    for i in s:
        result[i.split('=')[0]]=i.split('=')[1]
    return result

@app.route('/')
def send():
    return render_template('index.html',name='')

@app.route('/index',methods=['GET','POST'])
def recv_name():
    recv_data=request.get_data()
    recv_data=decode_recv_data(recv_data)

    print(recv_data)

    return render_template('index.html',name=recv_data['username'],password=recv_data['password'])

@app.route('/<file>.html',methods=['GET'])
def hello(file):
    return render_template(file+'.html')



if __name__ == '__main__':
    app.run(debug=True)

