return {
  "akinsho/toggleterm.nvim",
  version = "*",
  lazy = false, -- Force load on startup to avoid E492
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-z>]], -- Map Ctrl+Z to toggle the terminal
      direction = "horizontal", -- Default to horizontal split
      shell = "pwsh.exe", -- Use PowerShell Core specifically for toggleterm
      -- You can add other options here if needed, e.g., size
      -- size = 15,
    })
  end,
}