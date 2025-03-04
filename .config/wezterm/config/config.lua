local M = {}

function M:init()
	self.options = {}
	return self
end

function M:append(module)
	-- 🛠 Debug: Print module to check if it's `nil`
	if not module then
		error("Config:append() received a nil module! Check your require statements.")
	end

	-- Merge the module into `options`
	for k, v in pairs(module) do
		self.options[k] = v
	end
	return self
end

return M
