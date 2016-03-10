chai = require "chai"
chai.should()
expect = chai.expect

async = require "async"
_ = require "underscore"

traverse = require "../modules/traverse"

describe "module: traverse", ->
	it "should traverse to the nearest package.json"
	it "should provide the brink.json file and the package.json file"
	it "should throw an error if they are not found"
	it "should use package.json to determine the location of brink.json"