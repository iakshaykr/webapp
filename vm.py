from flask import Flask
app = Flask(__name__)

@app.route("/")
def Hello():
    return "Hello World AKSHAY KUMAR!"
if __name__ == "__main__":
    app.run()

