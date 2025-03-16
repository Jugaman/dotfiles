local Config = require("config.config")

return Config:init()
	:append(require("config.appearance"))
	:append(require("config.ssh-agent"))
	:append(require("config.binds")).options
