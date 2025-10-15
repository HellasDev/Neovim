return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    shell = "pwsh",
    persist_mode = true,
    direction = "float",
    float_opts = {
      border = "rounded",
      width = function()
        return math.ceil(vim.o.columns * 0.5)
      end,
      height = function()
        return math.ceil(vim.o.lines * 0.6)
      end,
    },
  },
}
