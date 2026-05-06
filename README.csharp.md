# C# Setup Notes

## Current State

C# support is provided by **[`seblyng/roslyn.nvim`](https://github.com/seblyng/roslyn.nvim)**, replacing the previous OmniSharp-based setup. The migration happened in commit `19d394e` ("Switching from Omnisharp to Rozlyn").

## Active Configuration

### `lua/plugins/roslyn.lua`

All C# config lives here:

- Disables `Hoffs/omnisharp-extended-lsp.nvim` (no longer needed)
- Mason `ensure_installed`: `csharpier` (formatter), `netcoredbg` (debugger), `fantomas` (F# formatter)
- Mason extra registry: `github:Crashdummyy/mason-registry` — required for roslyn.nvim
- nvim-lspconfig: both `omnisharp` and `csharp_ls` explicitly disabled
- `seblyng/roslyn.nvim` with `ft = "cs"` and `lock_target = true`

### `lazyvim.json`

The `lazyvim.plugins.extras.lang.dotnet` extra is enabled, providing base C#/F# support (treesitter, DAP config, etc.).

## Roslyn Setup

`seblyng/roslyn.nvim` requires the Roslyn LSP binary to be installed. The mason registry `Crashdummyy/mason-registry` makes it installable via Mason (`:MasonInstall roslyn`).

`lock_target = true` tells roslyn to lock onto the first `.sln` file it finds rather than prompting on every file open — useful in multi-project repos.
