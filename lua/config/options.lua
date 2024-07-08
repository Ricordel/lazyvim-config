-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","

-- Don't autoformat files. Auto-formatting is a pain when working on an existing
-- codebase.
vim.g.autoformat = false

vim.opt.winbar = "%=%m %f"

vim.opt.guicursor = "a:block,a:blinkon0"

-- Indentation related
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.wrap = true
vim.opt.linebreak = true
