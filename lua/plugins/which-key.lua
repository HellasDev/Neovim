return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({
      win = {
        border = "rounded",
      },
    })
    wk.add({
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Εξερευνητής" },
      { "<leader>f", group = "Αρχείο" },
      { "<leader>fs", ":w<CR>", desc = "Αποθήκευση" },
      { "<leader>c", group = "Κώδικας" },
      { "<leader>cf", function() require("conform").format({ async = true, lsp_fallback = true }) end, desc = "Format" },
      { "<leader>d", group = "Διάγνωση" },
      { "<leader>w", group = "Χώρος Εργασίας" },
      -- Telescope Search Group
      { "<leader>s", group = "Αναζήτηση" },
      { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Εύρεση Αρχείου" },
      { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Εύρεση Κειμένου" },
      { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "Εύρεση σε Buffers" },
      { "<leader>so", "<cmd>Telescope oldfiles<cr>", desc = "Πρόσφατα Αρχεία" },
    })
  end,
}
