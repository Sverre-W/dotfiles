-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

-- C#
local function keymap(mode, l, r, opts)
  opts = opts or {}
  opts.buffer = true
  opts.desc = string.format("Lsp: %s", opts.desc)
  vim.keymap.set(mode, l, r, opts)
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("DefaultLspAttach", { clear = true }),
  callback = function()
    ---------- MAPPINGS ----------

    keymap("n", "gi", vim.lsp.buf.implementation, { desc = "Implementation" })
    keymap("n", "gd", vim.lsp.buf.definition, { desc = "Definitions" })
    keymap("n", "gh", vim.lsp.buf.hover, { desc = "Hover" })
    keymap("n", "gr", vim.lsp.buf.references, { desc = "References" })
    keymap("n", "ga", vim.lsp.buf.code_action, { desc = "Quick fix" })
    keymap("n", "<leader>dw", ":Telescope diagnostics<CR>", { desc = "Diagnostics in telescope" })
    keymap("n", "<leader>th", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end, { desc = "Toggle inlay hints" })
  end,
})
