-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("t", "<C-d>", "<C-\\><C-n><C-w>l", {})
map("n", "<leader>tt", "<cmd>ToggleTerm 1 direction=float<CR>", { desc = "Show floating terminal" })
map("n", "<leader>tr", "<cmd>ToggleTerm 2 direction=vertical size=80<CR>", { desc = "Show terminal right side" })
map("n", "<leader>tb", "<cmd>ToggleTerm 3 direction=horizontal <CR>", { desc = "Show terminal at the bottom" })
