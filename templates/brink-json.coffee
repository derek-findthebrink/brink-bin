template = {
	root: "."
	languages:
		data:
			"client": "coffee",
			"server": "coffee"
		ui:
			"client": "cjsx",
			"server": "cjsx"
	features:
		tasks:
			"enabled": true
		test:
			"enabled": true
		config:
			"enabled": true
		assets:
			"enabled": true
		dumps:
			"enabled": true
		logs:
			"enabled": true
		scratch:
			"enabled": true
		ui:
			"enabled": true
		views:
			"enabled": true
		api:
			"enabled": true
	scaffold:
		api:
			controllers: null
			models:
				"files": ["_base"]
			policies: null
			routes: null
			services: null
		assets:
			lib: null
		config:
			"files": ["database"]
		docs: null
		dumps: null
		logs: null
		scratch: null
		tasks: null
		test: null
		ui:
			js: null
			css:
				"files": ["index", "_base", "_config"]
				layouts: null
				modules: null
		views:
			modules:
				"files": ["_nav", "_header", "_footer"]
			pages:
				"files": ["home", "_template"]
			"files": ["_layout"]
	api:
		server:
			"folder": "api"
			"files": null
			models:
				"files": ["_base", "index"]
			controllers: ["_base"]
			routes: null
			services: null
			politices: null
		client:
			"folder": "ui/js"
			"files": ["router", "index"]
			models: ["_base", "index"]
			controllers: null
			services: null
}

module.exports = template