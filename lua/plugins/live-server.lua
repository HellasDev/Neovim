return {
"barrett-ruth/live-server.nvim",
build = "npm install -g live-server",
cmd = { "LiveServerStart", "LiveServerStop" },
config = function()
require("live-server").setup({
port = 8080,
browser_command = "xdg-open",
quiet = false,
no_css_inject = false,
install_path = vim.fn.stdpath("data") .. "/live-server/",
})
end,
keys = {
{
"<leader>lv",
function()
local live_server = require("live-server")
if vim.g.live_server_running then
live_server.stop(vim.fn.expand("%:p:h"))
vim.g.live_server_running = false
else
live_server.start(vim.fn.expand("%:p:h"))
vim.g.live_server_running = true
end
end,
desc = "🌐 Toggle Live Server",
},
},
}
