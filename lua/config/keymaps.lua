-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<leader>k", "<ESC>")
vim.keymap.set("i", "<leader>w", "<ESC>:w<CR>a", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })

-- vim.keymap.set("n", "gt", ":BufferLineCycleNext<CR>", { desc = "Next tab", silent = true })
-- vim.keymap.set("n", "gT", ":BufferLineCyclePrev<CR>", { desc = "Prev tab", silent = true })

vim.keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Next quickfix", silent = true })
vim.keymap.set("n", "<leader>qp", ":cpreviois<CR>", { desc = "Previous quickfix", silent = true })
vim.keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix", silent = true })
vim.keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close quickfix", silent = true })

vim.keymap.set("n", "<leader>ln", ":lnext<CR>", { desc = "Next location", silent = true })
vim.keymap.set("n", "<leader>lp", ":lpreviois<CR>", { desc = "Previous location", silent = true })
vim.keymap.set("n", "<leader>lo", ":lopen<CR>", { desc = "Open location", silent = true })
vim.keymap.set("n", "<leader>lc", ":lclose<CR>", { desc = "Close location", silent = true })

-- Gimme back my L and H, you stupid bufferline!
vim.keymap.del("n", "L")
vim.keymap.del("n", "H")
