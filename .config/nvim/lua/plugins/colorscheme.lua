return {
  {
    dir = "~/.config/nvim/lua/plugins/phantom_gloom", -- Load locally
    priority = 1000,
    lazy = false,
    config = function()
      require("plugins.phantom_gloom").setup()
    end,
  },
}
