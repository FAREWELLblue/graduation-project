from flask import Flask, request, render_template
app=Flask(__name__)

@app.route('/')
def send():
    return render_template('window_refresh.html')

@app.route('/new',methods=['GET','POST'])
def recv_name():
    recv_data=request.get_data()
    print(recv_data)

    return '1'


if __name__ == '__main__':
    app.run(debug=True)

# 修改2