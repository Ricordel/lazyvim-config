-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.opt.winbar = "%=%m %f"

vim.keymap.set("i", "<leader>k", "<ESC>")
vim.keymap.set("i", "<leader>w", "<ESC>:w<CR>a")
vim.keymap.set("n", "<leader>w", ":w<CR>")
-- Don't autoformat files. Auto-formatting is a pain when working on an existing
-- codebase.
vim.g.autoformat = false

vim.opt.guicursor = "a:block,a:blinkon0"
