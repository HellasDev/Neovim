return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      -- NOTE: If you are having trouble building this, read the latest instructions at
      -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
      build = "make",
      cond = function()
        -- Check if make is available
        return vim.fn.executable("make") == 1
      end,
    },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      -- You can leave this empty to use the default settings, or customize things here
    })
  end,
}
