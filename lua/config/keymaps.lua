---@diagnostic disable: undefined-global
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Window navigation (existing)
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Μετακίνηση στο αριστερό παράθυρο" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Μετακίνηση στο δεξί παράθυρο" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Μετακίνηση στο κάτω παράθυρο" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Μετακίνηση στο πάνω παράθυρο" })

-- Window resizing (existing, C-Left/Right removed)
keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Αύξηση ύψους παραθύρου" })
keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Μείωση ύψους παραθύρου" })

-- Toggle terminal (existing)
keymap.set({ "n", "t" }, "<C-z>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

-- Bufferline navigation (existing)
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Επόμενο Buffer" })
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Προηγούμενο Buffer" })
keymap.set("n", "<S-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Επόμενο Buffer" })
keymap.set("n", "<S-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Προηγούμενο Buffer" })

-- New Keymaps from user
-- Επιλογή όλου του κειμένου
keymap.set(
  "n",
  "<leader>aa",
  "ggVG",
  { noremap = true, silent = true, desc = "📄 Επιλογή όλου του κειμένου" }
)

-- Κλείσιμο ενεργού buffer
keymap.set("n", "<leader>q", ":bwipeout<CR>", { silent = false, desc = "❌ Κλείσιμο buffer" })

-- Επικόλληση από το clipboard του συστήματος
keymap.set(
  { "n", "v" },
  "p",
  '"+p',
  { noremap = true, silent = true, desc = "📋 Επικόλληση από clipboard" }
)
-- Αντιγραφή στο clipboard του συστήματος
keymap.set(
  { "n", "v" },
  "y",
  '"+y',
  { noremap = true, silent = true, desc = "📋 Αντιγραφή στο clipboard" }
)

-- Αντικατάσταση λέξης κάτω από τον κέρσορα με floating window
vim.keymap.set("n", "<leader>ss", function()
  local word = vim.fn.expand("<cword>")
  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "cursor",
    width = 40,
    height = 1,
    col = 0,
    row = 1,
    style = "minimal",
    border = "rounded",
    title = " Αντικατάσταση ",
    title_pos = "center",
  })
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, { word })
  vim.bo[buf].modifiable = true
  vim.keymap.set("n", "<CR>", function()
    local new_word = vim.api.nvim_buf_get_lines(buf, 0, 1, false)[1]
    vim.api.nvim_win_close(win, true)
    if new_word and #new_word > 0 and new_word ~= word then
      vim.cmd(":%s\\<" .. word .. "\\>/" .. new_word .. "/gI")
    end
  end, { buffer = buf })
  vim.keymap.set("n", "<Esc>", function()
    vim.api.nvim_win_close(win, true)
  end, { buffer = buf })
end, { desc = "🔄 Αντικατάσταση λέξης" })

-- Μετακίνηση επιλεγμένου κειμένου σε Visual Mode
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv", { desc = "⬇️ Μετακίνηση επιλογής κάτω" })
keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv", { desc = "⬆️ Μετακίνηση επιλογής πάνω" })

-- Δημιουργία κάθετου split
keymap.set(
  "n",
  "<leader>v",
  ":vsplit<CR>",
  { noremap = true, silent = true, desc = "🧩 Κάθετος χωρισμός" }
)

-- Δημιουργία οριζόντιου split
keymap.set(
  "n",
  "<leader>h",
  ":split<CR>",
  { noremap = true, silent = true, desc = "🧱 Οριζόντιος χωρισμός" }
)

-- Πλοήγηση μεταξύ splits (new)
keymap.set("n", "<C-Left>", ":wincmd h<CR>", { desc = "⬅️ Παράθυρο αριστερά" })
keymap.set("n", "<C-Right>", ":wincmd l<CR>", { desc = "➡️ Παράθυρο δεξιά" })

-- =======================================================================
-- 👇 Αντιστροφή πλήκτρων h/j/k/l για αριστερόχειρα
-- =======================================================================

vim.keymap.set(
  { "n", "v" },
  "h",
  "l",
  { noremap = true, desc = "➡️ Πλοήγηση δεξιά (αριστερόχειρα)" }
)
vim.keymap.set(
  { "n", "v" },
  "l",
  "h",
  { noremap = true, desc = "⬅️ Πλοήγηση αριστερά (αριστερόχειρα)" }
)
vim.keymap.set(
  { "n", "v" },
  "j",
  "k",
  { noremap = true, desc = "⬆️ Πλοήγηση πάνω (αριστερόχειρα)" }
)
vim.keymap.set(
  { "n", "v" },
  "k",
  "j",
  { noremap = true, desc = "⬇️ Πλοήγηση κάτω (αριστερόχειρα)" }
)

-- Υποστήριξη για wrapped γραμμές
vim.keymap.set(
  { "n", "v" },
  "gj",
  "gk",
  { noremap = true, desc = "⬆️ Πλοήγηση πάνω (wrapped, αριστερόχειρα)" }
)
vim.keymap.set(
  { "n", "v" },
  "gk",
  "gj",
  { noremap = true, desc = "⬇️ Πλοήγηση κάτω (wrapped, αριστερόχειρα)" }
)
