from flask import Flask
app=Flask(__name__)

@app.route('/user/<username>')
def show_user_profile(username):
    return 'User %s'%username


@app.route('')
def show_user_profile():
    return 'hello world'

if __name__ == '__main__':
    app.run()
