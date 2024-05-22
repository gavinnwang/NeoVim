local map = vim.keymap.set

map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })
-- Comment
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "comment toggle" })

map(
  "v",
  "<leader>/",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "comment toggle" }
)

map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "n", "10jzz")
map("n", "m", "10kzz")
map("n", "va", "v$")
map("n", "vi", "v0")
map("n", "gm", "gM")
map('n', 'j', 'gj')
map('n', 'k', 'gk')

-- map('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>')
-- map('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>')
-- map('n', '<C-j>', '<cmd> TmuxNavigateDown<CR>')
-- map('n', '<C-k>', '<cmd> TmuxNavigateUp<CR>')
