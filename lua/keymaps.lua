local keymap = vim.keymap

-- Removes highlighting
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Split window horizontally
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sh', '<C-w>s')     -- Split window horizontally
keymap.set('n', '<leader>se', '<C-w>=')     -- Make split windows equal with
keymap.set('n', '<leader>sx', ':close<CR>') -- Closevurrent split windoh
