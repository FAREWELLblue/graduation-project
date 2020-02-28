from flask import Flask,render_template
app=Flask(__name__)

@app.route('/')
def test_send():
    dic=(('tom','hello'),('lily','hi'))

    return render_template('send.html',data=dic)

if __name__ == '__main__':
    app.run(debug=True)