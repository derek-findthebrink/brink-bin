fs = require "fs"
nodepath = require "path"

FileOptions = require("./classes").FileOptions


# takes <FileOptions> opts and async-compatible cb
module.exports = fsMaker = (o, cb)->
	f = new FileOptions(o)
	full = f.getFull()
	template = f.getTemplate()
	fs.writeFile(full, template, {encoding:"utf8"}, (err)->
		if err
			return cb(err)
		return cb(null, f.getRel())
		)
