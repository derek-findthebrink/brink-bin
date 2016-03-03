async = require "async"
path = require "path"
fs = require "fs"
colors = require "colors"
_ = require "underscore"

searchUp = (npath, file, cb)->
	tpath = path.join npath, file
	fs.stat(tpath, (err, stat)->
		if err
			if count < limit
				count++
				newPath = path.join npath, "../"
				return searchUp(newPath, file, cb)
			return cb(err)
		if stat.isFile()
			return cb(null, npath, file)
		)

parseErr = (err, cb)->
	if err
		if err.code == "ENOENT"
			msg = "could not find package.json. Are you in a project directory?"
			return cb(err, msg)


go = (cb)->
	cwd = process.cwd()
	f = "package.json"
	async.waterfall([
		async.apply(searchUp, cwd, f)
		], (err, p, file)->
			if err
				return parseErr(err, cb)
			return cb(null, p, file)
			)

module.exports = go