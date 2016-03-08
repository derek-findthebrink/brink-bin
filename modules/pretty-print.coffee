_ = require "underscore"

count = 0
limit = 6

printOpts = {
	rightPadding: 5
	leftPadding: 4
}

c = {
	key: "blue"
	val: "green"
}

prettyPrint = (txt, cb)->
	generatePadding = (num)->
		pstr = ""
		while num >= 0
			pstr+= " "
			num--
		return pstr
	log = (key, val, color, opts)->
		if typeof val != "string"
			val = String val
		lPad = generatePadding(opts.leftPadding)
		rPad = generatePadding(opts.maxPad - key.length)
		str = [lPad, key[color.key].bold, rPad, val[color.val]].join("")
		return console.log str
	getMaxPadding = (t, opts)->
		arr = []
		_.map(t, (val, key)->
			arr.push(key.length)
			)
		return _.max(arr) + opts.rightPadding

	printOpts.maxPad = getMaxPadding(txt, printOpts)
	console.log ""
	_.each txt, (v, k, list)->
		log(k, v, c, printOpts)
	console.log ""
	cb(null)

module.exports = prettyPrint