return {
  "akinsho/bufferline.nvim",
  requires = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require("bufferline").setup {
      options = {
        mode = "tabs",
        separator_style = "slant",
      },
    }
  end,
}
