return {
"lewis6991/gitsigns.nvim",
event = { "BufReadPre", "BufNewFile" },
config = function()
require("gitsigns").setup({
signs = {
add = { text = "+" },
change = { text = "~" },
delete = { text = "_" },
topdelete = { text = "‾" },
changedelete = { text = "~" },
untracked = { text = "┆" },
},
signs_staged = {
add = { text = "+" },
change = { text = "~" },
delete = { text = "_" },
topdelete = { text = "‾" },
changedelete = { text = "~" },
},
current_line_blame = true,
current_line_blame_opts = {
virt_text = true,
virt_text_pos = "eol",
delay = 1000,
ignore_whitespace = false,
},
current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
signcolumn = true,
numhl = false,
linehl = false,
word_diff = false,
watch_gitdir = {
follow_files = true,
},
attach_to_untracked = true,
sign_priority = 6,
update_debounce = 100,
status_formatter = nil,
max_file_length = 40000,
preview_config = {
border = "rounded",
style = "minimal",
relative = "cursor",
row = 0,
col = 1,
},
})
end,
}
