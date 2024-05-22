require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "n", "10jzz")
map("n", "m", "10kzz")
map("n", "va", "v$")
map("n", "vi", "v0")
map("n", "gm", "gM")
map("n", "<C-x>", "<C-w>j :q <CR> <C-w>l")
-- map("n", "<C-z>", "<C-w>j A")
-- map("t", "<C-z>", "<C-w>k")
map('n', 'j', 'gj')
map('n', 'k', 'gk')

map('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>')
map('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>')
map('n', '<C-j>', '<cmd> TmuxNavigateDown<CR>')
map('n', '<C-k>', '<cmd> TmuxNavigateUp<CR>')
