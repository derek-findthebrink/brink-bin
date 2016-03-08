nodepath = require "path"

class APIFileOptions
	constructor: (i, type, path, config)->
		# console.log arguments:arguments
		tst = typeof i
		if (tst != "object" && tst != "string")
			return console.error new Error("could not parse input", i)

		if tst == "string"
			@name = i
			api = config.api[type]

		if tst == "object"
			type = i.type
			@name = i.name
			api = i.config.api[type]
			config = i.config
			path = i.path

		@for = type
		@type = config.languages.data[type]
		@dir = nodepath.join path, config.root, api.folder, api.models.name
		@root = path
		return @
	getBase: ->
		return [@name, @type].join(".")
	getFull: ->
		return nodepath.join @dir, @getBase()
	getRel: ->
		return nodepath.relative @root, @getFull()
	getTemplate: ->
		return "# a blank canvas for your imagination lovingly created by Brink 0.1.0"


exports.FileOptions = APIFileOptions