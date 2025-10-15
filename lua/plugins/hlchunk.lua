return {
"shellRaining/hlchunk.nvim",
event = { "BufReadPre", "BufNewFile" },
config = function()
require("hlchunk").setup({
chunk = {
enable = true,
priority = 15,
style = {
{ fg = "#61AFEF" },
{ fg = "#F07178" },
},
use_treesitter = true,
chars = {
horizontal_line = "─",
vertical_line = "│",
left_top = "╭",
left_bottom = "╰",
right_arrow = ">",
},
textobject = "",
max_file_size = 1024 * 1024,
error_sign = true,
duration = 200,
delay = 300,
},
indent = {
enable = false,
priority = 10,
style = {
{ fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") },
},
use_treesitter = false,
chars = { "│", "¦", "┆", "┊" },
ahead_lines = 5,
delay = 100,
},
line_num = {
enable = false,
style = "#806d9c",
priority = 10,
use_treesitter = false,
},
blank = {
enable = false,
priority = 9,
style = {
{ bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("cursorline")), "bg", "gui") },
{ bg = "", fg = "" },
},
chars = { " " },
},
})
end,
}
