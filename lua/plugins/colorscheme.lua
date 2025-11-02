return {
  "marko-cerovac/material.nvim",
  name = "material",
  priority = 1000,
  config = function()
    require('material').setup({
      contrast = {
        terminal = true,
        sidebars = true,
        floating_windows = true,
        cursor_line = true,
        lsp_virtual_text = true,
        non_current_windows = false,
        filetypes = {},
      },
      styles = {
        comments = { italic = true },
        strings = {},
        keywords = {},
        functions = {},
        variables = {},
        operators = {},
        types = {},
      },
      plugins = {
        "gitsigns",
        "mini",
        "neo-tree",
        "nvim-cmp",
        "telescope",
        "which-key",
      },
      disable = {
        colored_cursor = false,
        borders = false,
        background = true,
        term_colors = false,
        eob_lines = false,
      },
      high_visibility = {
        lighter = false,
        darker = true,
      },
      lualine_style = "default",
      async_loading = true,
      custom_colors = nil,
      custom_highlights = {
        FloatBorder = { fg = "#bf8e2f" },
      },
    })

    vim.g.material_style = "darker"
    vim.cmd("colorscheme material")
  end,
}