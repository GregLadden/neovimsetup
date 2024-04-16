# Neovim Setup

## Setup needed to sync clipboard using WSL on Windows

```lua
sudo apt update
sudo apt install xclip

vim.opt.clipboard = "unnamedplus"

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
```
