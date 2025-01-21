local cmd = vim.cmd -- execute Vim commands
local g = vim.g -- global variables
local opt = vim.opt -- global/buffer/windows-scoped options

local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

g.mapleader = " " -- Space as <leader>

-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map("i", "jj", "<Esc>", { noremap = true, desc = "Back to NORMAL mode" })
map("i", "kk", "<Esc>", { noremap = true, desc = "Back to NORMAL mode" })

-- Стрелочки откл. Использовать hjkl
map("", "<up>", ':echoe "Use k"<CR>', { noremap = true, silent = false })
map("", "<down>", ':echoe "Use j"<CR>', { noremap = true, silent = false })
map("", "<left>", ':echoe "Use h"<CR>', { noremap = true, silent = false })
map("", "<right>", ':echoe "Use l"<CR>', { noremap = true, silent = false })

-- remove search highlight
map("n", "<leader>nh", ":nohl<CR>", { desc = "Remove search highlight" })

-- inc/dec numbers
map("n", "<leader>+", "<C-a>", { desc = "Increment number" })
map("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- splits
map("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Same size splits" })
map("n", "<leader>sx", "<CMD>close<CR>", { desc = "Close split" })

map("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close tab" })
map("n", "<leader>tn", "<CMD>tabn<CR>", { desc = "To next tab" })
map("n", "<leader>tp", "<CMD>tabp<CR>", { desc = "To prev tab" })
map("n", "<leader>tf", "<CMD>tabnew %<CR>", { desc = "Current buffer in a new tab" })

map("n", "<C-s>", "<CMD>wa!<CR>", { desc = "Save everything" })

-- commenting
-- local comment = require("Comment.api")
-- map("n", "<C-_>", comment.toggle.linewise, { desc = "Comment current line (gcc)" })
