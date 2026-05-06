# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration built on [LazyVim](https://lazyvim.github.io/) (a structured Neovim starter framework using lazy.nvim as the plugin manager).

## Code Style

Lua files are formatted with StyLua: **2-space indent**, **120-column width** (`stylua.toml`). Run `stylua .` to format.

## Architecture

### Entry Points

- `init.lua` — bootstraps lazy.nvim and calls `require("config.lazy")`
- `lua/config/lazy.lua` — main plugin spec: imports LazyVim core, enabled extras, and `lua/plugins/`
- `lazyvim.json` — LazyVim extras enabled via `:LazyExtras` UI (ansible, docker, git, dotnet, yaml, rust, mini-surround, markdown)

### Config Layer (`lua/config/`)

These four files mirror LazyVim's conventions and are auto-loaded at the right lifecycle stage:

| File | Purpose |
|---|---|
| `options.lua` | Vim options + globals (loaded before lazy.nvim) |
| `keymaps.lua` | Custom keymaps (loaded on `VeryLazy`) |
| `autocmds.lua` | Autocommands (loaded on `VeryLazy`) |
| `lazy.lua` | Plugin manager setup and spec |

### Plugin Overrides (`lua/plugins/`)

Each file returns a lazy.nvim plugin spec that overrides or extends LazyVim defaults. To add a new plugin or override an existing one, create a new `.lua` file here — it's automatically picked up.

Key overrides in place:

- **`disabled.lua`** — disables `bufferline.nvim` and `nvim-snippets`
- **`lsp.lua`** — disables inlay hints globally
- **`snacks.lua`** — disables scroll and animate features; enables bigfile
- **`bigfile.lua`** — `LunarVim/bigfile.nvim` kicks in at 25 MiB, disabling LSP/treesitter/syntax etc.
- **`flash.lua`** — disables the `s` key binding from flash.nvim
- **`markdownlint.lua`** — removes markdownlint from nvim-lint's filetype mapping
- **`markdown-preview.lua`** — dark theme, no auto-close on markdown-preview.nvim
- **`nvim-cmp.lua`** — custom completion mappings: `<Tab>` confirms selection, `<CR>` only confirms explicit selection
- **`window-picker.lua`** — `s1n7ax/nvim-window-picker` with floating-big-letter hints
- **`tokyonight-tweaks.lua`** — custom comment highlight color (`#bbbbff`, italic)
- **`roslyn.lua`** — C# LSP via roslyn.nvim; see [`README.csharp.md`](README.csharp.md) for details

## Key Customizations

- **Leader key**: `,`
- **Autoformat**: disabled globally (`vim.g.autoformat = false`) — format manually when needed
- **Animations**: disabled (`vim.g.snacks_animate = false`)
- **Indentation**: 4 spaces (tab/shift/softtab all set to 4)
- **Winbar**: shows modified flag + file path
- **Cursor**: block cursor, no blinking
- **Markdown**: `conceallevel=0` (raw syntax visible)
- **Buffer navigation**: `<C-n>` / `<C-p>` cycle buffers; `L` and `H` unbound (LazyVim uses them for buffer cycling by default)
- **Quickfix**: `<leader>qn/qp/qo/qc` for next/prev/open/close
