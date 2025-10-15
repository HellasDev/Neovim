return {
"rebelot/kanagawa.nvim",
name = "kanagawa",
lazy = false,
priority = 1000,
config = function()
require("kanagawa").setup({
compile = false,
undercurl = true,
commentStyle = { italic = true },
functionStyle = {},
keywordStyle = { italic = false },
statementStyle = { bold = true },
typeStyle = {},
transparent = false,
dimInactive = false,
terminalColors = true,
colors = {
theme = {
all = {
ui = {
bg_gutter = "none"
}
}
}
},
overrides = function(colors)
local theme = colors.theme
return {
NormalFloat = { bg = theme.ui.bg },
FloatBorder = { bg = theme.ui.bg, fg = theme.ui.fg_dim },
FloatTitle = { bg = theme.ui.bg },
}
end,
theme = "wave", -- dragon, wave, lotus
background = {
dark = "wave",
light = "lotus"
},
})

vim.o.termguicolors = true

-- Φόρτωση αποθηκευμένου theme preference
local cache_file = vim.fn.stdpath("cache") .. "/theme_bg"
if vim.fn.filereadable(cache_file) == 1 then
local saved_bg = vim.fn.readfile(cache_file)[1]
vim.o.background = saved_bg or "dark"
else
vim.o.background = "dark"
end

vim.cmd("colorscheme kanagawa")

-- Expose a global function to toggle theme
_G.KanagawaToggleTheme = function()
local current_bg = vim.o.background
local new_bg = (current_bg == "dark") and "light" or "dark"
vim.o.background = new_bg
vim.fn.writefile({ new_bg }, cache_file) -- Save preference
vim.cmd("colorscheme kanagawa")
end
end,
}