vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrap
opt.wrap = false

-- Sync clipboard between OS and Neovim.
opt.clipboard:append("unnamedplus")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
