return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 10000,
    style = "moon",
    opts = {
      on_highlights = function(hl)
        hl.Comment = { fg = "#bbbbff", italic = true }
      end,
    },
  },
}
