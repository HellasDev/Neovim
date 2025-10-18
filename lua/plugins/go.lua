return {
  "ray-x/go.nvim",
  dependencies = {
    "ray-x/guihua.lua",
  },
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
  build = '<CMD>GoInstallBinaries<CR>',
  config = function()
    require("go").setup()
  end,
}
