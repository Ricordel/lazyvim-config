return {
    { "Hoffs/omnisharp-extended-lsp.nvim", enabled = false },
    {
      "mason-org/mason.nvim",
      opts = {
        ensure_installed = { "csharpier", "netcoredbg", "fantomas" },
        registries = {
          "github:mason-org/mason-registry",
          "github:Crashdummyy/mason-registry",  -- required for roslyn
        },
      },
    },
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          omnisharp = { enabled = false },
          csharp_ls = { enabled = false },
        },
      },
    },
    {
      "seblyng/roslyn.nvim",
      ft = "cs",
      opts = {
        lock_target = true,  -- lock to first solution found, avoids prompting on every file
      },
    },
  }
