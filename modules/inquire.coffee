inquirer = require "inquirer"
async = require "async"
_ = require "lodash"

ask = (questions, cb)->
	inquirer.prompt questions, (a)->
		return cb(null, a)

module.exports = ask