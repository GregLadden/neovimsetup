return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'everforest'
      }
      --TODO: Update color scheme
    }
  end
}
