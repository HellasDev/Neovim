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
vim.cmd("LiveServerStop")
vim.g.live_server_running = false
vim.notify("Live Server σταμάτησε", vim.log.levels.INFO)
else
vim.cmd("LiveServerStart")
vim.g.live_server_running = true
vim.notify("Live Server ξεκίνησε στο http://localhost:8080", vim.log.levels.INFO)
end
end,
desc = "🌐 Toggle Live Server",
},
},
}
