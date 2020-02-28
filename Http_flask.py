from flask import request,Flask
app=Flask(__name__)


def show_the_login_form():
    return 'show_the_login_form'


def do_the_login():
    return 'do_the_login'


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return do_the_login()
    else:
        return show_the_login_form()

if __name__ == '__main__':
    app.run()
