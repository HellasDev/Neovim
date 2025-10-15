local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Tell lazy.nvim to load plugin specs from the `lua/plugins` directory
require("lazy").setup("plugins", {
  -- You can add lazy.nvim options here, for example:
  -- checker = { enabled = true, notify = false },
  -- performance = { rtp = { disabled_plugins = { "gzip", "tarPlugin", "tohtml", "zipPlugin" } } }
})
