local M = {}

function M.setup()
  -- Load color palette
  local colors = require("plugins.phantom_gloom.chromatic_palette")
  local theme = require("plugins.phantom_gloom.theme")(colors)

  -- Apply highlights
  for group, settings in pairs(theme) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
