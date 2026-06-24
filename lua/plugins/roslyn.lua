return {
  { "Hoffs/omnisharp-extended-lsp.nvim", enabled = false },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "csharpier", "netcoredbg", "fantomas" },
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry", -- required for roslyn
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
    init = function()
      vim.lsp.config("roslyn", {
        settings = {
          ["csharp|background_analysis"] = {
            dotnet_compiler_diagnostics_scope = "fullSolution",
            dotnet_analyzer_diagnostics_scope = "openFiles",
          },
        },
      })
      vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "*.slnf",
        callback = function(args)
          vim.g._roslyn_slnf = vim.fn.fnamemodify(args.file, ":p")
          vim.notify(
            "Roslyn target set to " .. vim.fs.basename(args.file) .. " (for the rest of this session, restart nvim to change)",
            vim.log.levels.INFO
          )
        end,
      })
    end,
    opts = {
      lock_target = true,
      debug = true,
      choose_target = function(targets)
        if vim.g._roslyn_slnf then
          return vim.g._roslyn_slnf
        end
        for _, t in ipairs(targets) do
          if t:match("%.slnf$") then return t end
        end
        return targets[1]
      end,
    },
  },
}
