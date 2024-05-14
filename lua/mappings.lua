require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "n", "10jzz")
map("n", "m", "10kzz")
map("n", "va", "v$")
map("n", "vi", "v0")
map("n", "gm", "gM")
map("n", "<C-x>", "<C-w>j :q <CR> <C-w>l")
map("n", "<C-z>", "<C-w>j A")
map("t", "<C-z>", "<C-w>k")
-- map("n", "<C-j>", "<Tab>")
-- map("n", "<C-k>", "<S-Tab>")
-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
map('n', '<A-h>', require('smart-splits').resize_left)
map('n', '<A-j>', require('smart-splits').resize_down)
map('n', '<A-k>', require('smart-splits').resize_up)
map('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
map('n', '<C-h>', require('smart-splits').move_cursor_left)
map('n', '<C-l>', require('smart-splits').move_cursor_right)
-- map('n', '<C-j>', require('smart-splits').move_cursor_down)
-- map('n', '<C-k>', require('smart-splits').move_cursor_up)
map('n', '<C-\\>', require('smart-splits').move_cursor_previous)
-- swapping buffers between windows
map('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
map('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
map('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
map('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

map('n', 'j', 'gj')
map('n', 'k', 'gk')
