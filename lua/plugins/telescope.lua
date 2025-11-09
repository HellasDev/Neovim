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
    -- Add the file browser dependency
    { "nvim-telescope/telescope-file-browser.nvim" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      -- You can leave this empty to use the default settings, or customize things here
      extensions = {
        file_browser = {
          -- You can configure the file browser here, for example:
          -- theme = "ivy",
          hijacks_netrw = true,
        },
      },
    })
    -- Load the extension
    telescope.load_extension("file_browser")

    -- Add keymap to open the file browser
    vim.keymap.set("n", "<leader>e", function()
      telescope.extensions.file_browser.file_browser({
        hidden = true,
        no_ignore = false, -- Εμφανίζει κρυφά αρχεία αλλά σέβεται το .gitignore
      })
    end, { desc = "Εξερευνητής Αρχείων (με κρυφά αρχεία)" })
  end,
}
