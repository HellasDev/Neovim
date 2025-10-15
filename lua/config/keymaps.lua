-- Set keymaps here

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Window navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Μετακίνηση στο αριστερό παράθυρο" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Μετακίνηση στο δεξί παράθυρο" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Μετακίνηση στο κάτω παράθυro" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Μετακίνηση στο πάνω παράθυρο" })

-- Window resizing
keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Αύξηση ύψους παραθύρου" })
keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Μείωση ύψους παραθύρου" })
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Μείωση πλάτους παραθύρου" })
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Αύξηση πλάτους παραθύρου" })

-- Toggle terminal
keymap.set({ "n", "t" }, "<C-z>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

-- Bufferline navigation
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Επόμενο Buffer" })
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Προηγούμενο Buffer" })
keymap.set("n", "<S-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Επόμενο Buffer" })
keymap.set("n", "<S-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Προηγούμενο Buffer" })

-- Leader keymaps


