template = {
	"root": "."
	"languages": {
		"data": {
			"client": "coffee",
			"server": "coffee"
		},
		"ui": {
			"client": "cjsx",
			"server": "cjsx"
		}
	},
	"features": {
		"tasks": {
			"enabled": true
		},
		"test": {
			"enabled": true
		},
		"config": {
			"enabled": true
		},
		"assets": {
			"enabled": true
		},
		"dumps": {
			"enabled": true
		},
		"logs": {
			"enabled": true
		},
		"scratch": {
			"enabled": true
		},
		"ui": {
			"enabled": true
		},
		"views": {
			"enabled": true
		},
		"api": {
			"enabled": true
		}
	},
	"api": {
		"server": {
			"folder": "api",
			"files": null,
			"models": {
				"name": "models",
				"base": "_base",
				"index": "index"
			},
			"controllers": {
				"name": "controllers"
			},
			"routes": {
				"name": "routes"
			},
			"services": {
				"name": "services"
			},
			"policies": {
				"name": "policies"
			}
		},
		"client": {
			"folder": "ui/js",
			"files": {
				"router": {
					"name": "router"
				},
				"index": {
					"name": "index"
				}
			},
			"models": {
				"name": "models",
				"base": "_base",
				"index": "index"
			},
			"controllers": {
				"name": "controllers"
			},
			"services": {
				"name": "services"
			}
		}
	}
}

module.exports = template