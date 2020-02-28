from flask import Flask, request, render_template, json

app=Flask(__name__)

@app.route('/')
def send():
    return render_template('recv.html')

@app.route('/new',methods=['POST'])
def recv_name():
    recv_data=request.get_data()
    print(recv_data)

    return 'OK'


if __name__ == '__main__':
    app.run(debug=True)

# 修改2