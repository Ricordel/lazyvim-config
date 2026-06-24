return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        roslyn_ls = { enabled = false }, -- conflicts with roslyn.nvim
      },
    },
  },
}
