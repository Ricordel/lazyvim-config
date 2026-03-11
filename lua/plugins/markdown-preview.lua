return {
  {
    "iamcco/markdown-preview.nvim",
    -- Use 'init' instead of 'config' to set global variables 
    -- without overwriting the plugin's internal setup logic.
    init = function()
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_theme = "dark"
    end,
  },
}
