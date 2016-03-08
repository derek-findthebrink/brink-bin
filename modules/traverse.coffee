async = require "async"
nodepath = require "path"
fs = require "fs"
colors = require "colors"
_ = require "underscore"

count = 0
limit = 5

searchUp = (npath, file, cb)->
	tpath = nodepath.join npath, file
	fs.stat(tpath, (err, stat)->
		if err
			# if traverse count still within limit
			if count < limit
				count++
				newPath = nodepath.join npath, "../"
				return searchUp(newPath, file, cb)
			# if too many upward traverses have been performed
			return cb(err)
		if stat.isFile()
			return cb(null, npath, file)
		# here return error that sought object is not a file
		)

parseErr = (err, cb)->
	if err
		msg = null
		if err.code == "ENOENT"
			msg = "could not find package.json. Are you in a project directory?"
		return cb(err, msg)


go = (cb)->
	cwd = process.cwd()
	f = "package.json"
	async.waterfall([
		async.apply(searchUp, cwd, f)
		], (err, p, file)->
			count = 0
			if err
				return parseErr(err, cb)
			return cb(null, p, file)
			)

module.exports = go