local Config = require("config.config")

return Config:init()
	:append(require("config.appearance"))
	:append(require("config.ssh-agent"))
	:append(require("config.color_scheme"))
	:append(require("config.binds")).options
