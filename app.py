from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host="localhost", port=6379, db=0)


@app.route("/")
def home():
    count = r.incr("counter")
    return f"Counter value: {count}"


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
