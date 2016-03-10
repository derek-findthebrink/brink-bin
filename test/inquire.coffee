chai = require "chai"
chai.should()
expect = chai.expect

ask = require "../modules/inquire"

describe "module: inquire", ->
	q1 = {
		name: "activity"
		type: "list"
		message: "what would you like to do?"
		choices: ["herp", "nerp", "derp", "slerp"]
	}

	it "should take a series of questions as parameters", (done)->
		ask q1, (err, answers)->
			if err
				throw err
			console.log answers:answers
			return done()

	it "should fail if the questions format is not correct"

	it "should return the answers to the questions"
		