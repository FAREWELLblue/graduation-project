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
    return render_template('ajax_.html')

@app.route('/new',methods=['GET','POST'])
def recv_name():

    print('1'+request.get_data().decode())
    # print('2'+request.form.get().decode())


    return render_template('hello.html')



if __name__ == '__main__':
    app.run(debug=True)

