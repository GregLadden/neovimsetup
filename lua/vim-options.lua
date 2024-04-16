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

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"  -- show sign column so that text doesn't shiftwidth

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- turn off swapfile
opt.swapfile = false

-- Sync clipboard between OS and Neovim.
opt.clipboard:append("unnamedplus")

-- Sync clipboard for WSL on Windows
vim.g.clipboard = {
  name = 'xclip',
  copy = {
    ['+'] = 'xclip -selection clipboard -in',
    ['*'] = 'xclip -selection primary -in',
  },
  paste = {
    ['+'] = 'xclip -selection clipboard -out',
    ['*'] = 'xclip -selection primary -out',
  },
  cache_enabled = 1,
}
-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true
