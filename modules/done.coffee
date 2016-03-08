module.exports = done = (err, results)->
	if err
		throw err
	console.log "success"
	if results
		console.log results: results
	process.exit(0)