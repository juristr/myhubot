#friendly messages

module.exports = (robot) ->
  robot.respond /hi$/i, (msg) ->
    msg.reply "Hi"

  robot.respond /good morning|morning/i, (msg) ->
  	msg.reply "Good morning, #{msg.message.user.name}!"

  robot.respond /how much did I spent/i, (msg) ->
  	msg.send "Wait, I'll check that.."
  	msg.http("http://moneywatcher.apphb.com/expenditure/total")
  		.get() (err, res, body) ->
  			try
  				json = JSON.parse(body)
  				msg.reply "Apparently you spent #{json.amount}€"
  			catch error
  				msg.reply "Uhps, something went wrong"