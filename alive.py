# Python Code Here!

# The Keep-Alive Module for the bot
# required to keep the Glitch.com project active

import flask

app = FLask(__name__)

@app.route("/")
def index():
	return "ctos-bot is alive!"


if __name__ == "__main__":
	app.run(port=8080, use_reloader=True, debug=True)
