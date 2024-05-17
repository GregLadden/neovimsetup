local M = {
  "neanias/everforest-nvim",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  local everforest = require("everforest")
  everforest.setup({
    background = "hard",
    transparent_background_level = 0,
    italics = true,
    disable_italic_comments = false,
    on_highlights = function(hl, _)
      hl.TelescopeBorder = { link = "Blue" }
      hl.TSKeywordFunction = { link = "Green" }
      -- hl.TSMethod = { link = "Green" }
      -- hl.TSFunction = { link = "Green" }
      -- hl.TSField = { link = "Green" }
      -- hl.TSProperty = { link = "Green" }
      hl.TSPunctSpecial = { link = "Green" }
      hl.TSKeyword = { link = "Green" }
      hl.TSConditional = { link = "Orange" }
      hl.TSKeywordReturn = { link = "Orange" }
      hl.TSRepeat = { link = "Orange" }
      hl.TSInclude = { link = "Green" }
      hl.javascriptTSInclude = { link = "Green" }
      hl.goTSInclude = { link = "Green" }
      hl["@lsp.type.class"] = { link = "Green" }
    end,
    colours_override = function(palette)
      palette.orange = "#FAAF4A"
      palette.red = "#E67E80"
      palette.aqua = "#FBE6BC"
      palette.blue = "#8DB5BC"
      palette.purple = "#C7A4E0"
      palette.green = "#92BF8D"
      palette.yellow = "#E8EF80"
      palette.fg = "#FBE6BC"
      palette.bg0 = "#232A2E"
    end,
  })
  everforest.load()
end

return M
