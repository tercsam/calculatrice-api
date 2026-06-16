from flask import Flask, request

app = Flask(__name__)

@app.route('/add')
def addition():
    a = request.args.get('a')
    b = request.args.get('b')
    a = int(a)
    b = int(b)
    resultat = a + b
    return str(resultat)

@app.route('/sub')
def soustraction():
    a = int(request.args.get('a'))
    b = int(request.args.get('b'))
    return str(a - b)

@app.route('/mul')
def multiplication():
    a = int(request.args.get('a'))
    b = int(request.args.get('b'))
    return str(a * b)

@app.route('/div')
def division():
    a = int(request.args.get('a'))
    b = int(request.args.get('b'))
    return str(a / b)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
