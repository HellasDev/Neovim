return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000, -- Make sure to load this before other plugins
  config = function()
    -- load the colorscheme here
    vim.cmd("colorscheme kanagawa")
  end,
}
