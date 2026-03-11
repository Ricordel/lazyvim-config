return {
 {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 10000,
    style = "moon",
    opts = {
      -- transparent = true,
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
      -- on_colors = function(colors)
      --   colors.comment = "#ffffff"
      -- end,
      on_highlights = function(hl)
        hl.comment = { fg = "#bbbbff", italic = true}
        hl.perlComment = { fg = "#bbbbff", italic = true}
        hl.Comment = { fg = "#bbbbff", italic = true}
        --hl.IlluminatedWordText = { bg = "#ffffff", fg = "#ffffff" }
      end,
    },
  },
}
