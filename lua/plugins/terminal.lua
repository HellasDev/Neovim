return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = [[<c-z>]],
    direction = "float",
    on_open = function(term)
      if term.direction == "float" and vim.bo.buftype == "" then
        vim.cmd("tcd " .. vim.fn.expand("%:p:h"))
      end
    end,
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
