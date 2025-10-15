return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "c", "lua", "vim", "vimdoc", -- Base languages
        "html", "css", "javascript", "typescript", "json", -- Web dev
        "go", "gomod", "gowork", "gosum", -- Go
      },
      sync_install = false, -- Install parsers asynchronously
      auto_install = true, -- Automatically install parsers for new languages
      highlight = {
        enable = true, -- Enable syntax highlighting
      },
    })
  end,
}
