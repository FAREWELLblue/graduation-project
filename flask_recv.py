from flask import Flask, request, render_template
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
    return render_template('ajax_useful.html')

@app.route('/new',methods=['POST'])
def recv_name():
    recv_data=request.get_data()
    recv_data=decode_recv_data(recv_data)

    print(recv_data)

    return render_template('hello.html',name=recv_data['username'])

@app.route('/hello',methods=['GET'])
def hello():
    return render_template('hello.html')


if __name__ == '__main__':
    app.run(debug=True)

