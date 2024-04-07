local keymap = vim.keymap

-- Removes highlighting
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Split window horizontally
keymap.set('n', '<leader>wv', '<C-w>v', { desc = "[w]indow [v]ertical" })
keymap.set('n', '<leader>wh', '<C-w>s', { desc = "[w]indow [h]orizontal" })
keymap.set('n', '<leader>we', '<C-w>=', { desc = "[w]indow [e]qual size" })
keymap.set('n', '<leader>wc', ':close<CR>', { desc = "[w]indow [c]lose" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[t]ab [o]pen new" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "[t]ab [c]lose current" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[t]ab [n]ext" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[t]ab [p]revious" })
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "[t]ab [b]buffer - Copy buffer to new tab " })
