local Config = require("config.config")

return Config:init()
	:append(require("config.appearance"))
	:append(require("config.color_scheme"))
	:append(require("config.mouse"))
	:append(require("config.multiplexer"))
	:append(require("config.startup"))
	:append(require("config.binds")).options
