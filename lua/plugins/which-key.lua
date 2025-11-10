return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    _G.ToggleRosePineVariant = function()
      if vim.o.background == "dark" then
        vim.cmd("colorscheme rose-pine-dawn")
        vim.o.background = "light"
      else
        vim.cmd("colorscheme rose-pine-main")
        vim.o.background = "dark"
      end
    end

    wk.setup({
      win = {
        border = "rounded",
      },
    })
    wk.add({
      { "<leader>f", group = "Αρχείο" },
      { "<leader>w", ":w<CR>", desc = "Αποθήκευση" },
      { "<leader>c", group = "Κώδικας" },
      { "<leader>cf", function() require("conform").format({ async = true, lsp_fallback = true }) end, desc = "Format" },
      { "<leader>ci", "<cmd>GoImport<CR>", desc = "Go: Εισαγωγή πακέτου" },
      { "<leader>cb", "<cmd>GoBuild<CR>", desc = "Go: Build" },
      { "<leader>ct", "<cmd>GoTest<CR>", desc = "Go: Test" },
      { "<leader>cc", "<cmd>GoCoverage<CR>", desc = "Go: Test Coverage" },
      { "<leader>ca", function() require("go.alternate").switch(true, "") end, desc = "Go: Εναλλαγή αρχείου" },
      { "<leader>cv", function() require("go.alternate").switch(true, "vsplit") end, desc = "Go: Εναλλαγή (vsplit)" },
      { "<leader>d", group = "Διάγνωση" },
      { "<leader>w", group = "Χώρος Εργασίας" },
      -- Telescope Search Group
      { "<leader>s", group = "Αναζήτηση" },
      { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Εύρεση Αρχείου" },
      { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Εύρεση Κειμένου" },
      { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "Εύρεση σε Buffers" },
      { "<leader>so", "<cmd>Telescope oldfiles<cr>", desc = "Πρόσφατα Αρχεία" },
      -- Git Group
      { "<leader>g", group = "Git" },
      { "<leader>gs", function() require("gitsigns").stage_hunk() end, desc = "Stage Hunk" },
      { "<leader>gr", function() require("gitsigns").reset_hunk() end, desc = "Reset Hunk" },
      { "<leader>gp", function() require("gitsigns").preview_hunk() end, desc = "Preview Hunk" },
      { "<leader>gb", function() require("gitsigns").blame_line() end, desc = "Blame Line" },
      { "[g", function() require("gitsigns").prev_hunk() end, desc = "Prev Hunk" },
      { "]g", function() require("gitsigns").next_hunk() end, desc = "Next Hunk" },
      -- Options Group
      { "<leader>o", group = "Επιλογές" },
      { "<leader>op", _G.ToggleRosePineVariant, desc = "Εναλλαγή Θέματος" },
      -- New Keymaps
      { "<leader>a", group = "Ενέργειες" }, -- New group for general actions
      { "<leader>aa", "ggVG", desc = "Επιλογή Όλων" },
      { "<leader>q", ":bwipeout<CR>", desc = "Κλείσιμο Buffer" },
      { "<leader>sp", group = "Splits" }, -- New group for splits
      { "<leader>v", ":vsplit<CR>", desc = "Κάθετο Split" },
      { "<leader>h", ":split<CR>", desc = "Οριζόντιος Split" },

      -- Custom user keymaps
    })
  end,
}