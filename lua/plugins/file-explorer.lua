return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- This will be mocked by mini.icons
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- Close Neo-tree if it is the last window
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      window = {
        mappings = {
          ["<"] = "prev_source",
          [">"] = "next_source",
        },
      },
      git_status = {
        symbols = {
          added = "✚",
          modified = "◆",
          deleted = "✖",
          renamed = "➜",
          untracked = "★",
          ignorable = "☒",
          conflicted = "▲",
          staged = "✓",
        },
      },
    })
  end,
}
