return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "echasnovski/mini.nvim" },
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      show_buffer_icons = true,
      show_close_icon = true,
    },
  },
}
