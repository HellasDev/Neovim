-- Disable netrw
vim.g.loaded_netrw = 1

-- For a complete list of options, see `:help option-list`

local opt = vim.opt

-- Line Numbers
opt.number = true
opt.relativenumber = false -- Set to true to see relative numbers

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Appearance
opt.wrap = false
opt.termguicolors = true
opt.signcolumn = "auto" -- Only show the sign column when there is something to display

-- Searching
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- But don't ignore case if the search query contains uppercase letters

-- Behavior
opt.swapfile = false
opt.backup = false
-- Set persistent undo
local undodir = vim.fn.stdpath("data") .. "/undodir"
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
opt.undodir = undodir
opt.undofile = true

-- Performance
opt.updatetime = 50 -- Faster update time for plugins

-- Scrolling
opt.scrolloff = 8 -- Keep 8 lines of context above/below the cursor

-- Completion options
opt.completeopt = "menu,menuone,noselect"

-- Session options for auto-session
opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Go environment variables
vim.env.GOBIN = vim.env.HOME .. "/go/bin"
vim.env.PATH = vim.env.PATH .. ":" .. vim.env.GOBIN

-- Lua package path for local luarocks installations
package.path = package.path .. ";" .. vim.fn.stdpath("data") .. "/luarocks/share/lua/5.1/?.lua"

-- Set jsregexp path for luasnip
vim.g.luasnip_jsregexp_path = vim.fn.stdpath("data") .. "/luarocks/share/lua/5.1/?.lua"