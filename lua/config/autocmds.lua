-- Set autocommands here

local api = vim.api

-- Highlight on yank
local highlight_group = api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  group = highlight_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch", -- Highlight group to use
      timeout = 200,         -- Duration in milliseconds
    })
  end,
})

-- Go to last cursor position when opening a file
api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = api.nvim_buf_get_mark(0, '"')
    local line = mark[1]
    local col = mark[2]
    -- Ensure the line number is valid
    if line > 1 and line <= api.nvim_buf_line_count(0) then
      api.nvim_win_set_cursor(0, { line, col })
    end
  end,
})

-- Αυτόματο save όταν βγαίνεις από Insert mode
api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",            -- Ισχύει για όλα τα αρχεία
  callback = function()
    if vim.bo.modified then -- Μόνο αν υπάρχουν αλλαγές
      vim.cmd("write")
    end
  end,
  desc = "Αυτόματο save όταν βγαίνεις από Insert mode"
})
