-- ==========================================================================
-- SYSTEM SETTINGS
-- ==========================================================================
vim.opt.number = true          
vim.opt.relativenumber = true  
vim.opt.signcolumn = "yes"
vim.opt.tabstop = 4      -- Number of spaces that a <Tab> character visually counts for
vim.opt.shiftwidth = 4   -- Number of spaces to use for each step of auto-indent
vim.opt.expandtab = true -- Convert every tab you press into spaces
vim.opt.softtabstop = 4    -- Make spaces feel like a real tab when hitting backspace
-- Only apply 4-space indentation to C and C++ files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.expandtab = true    -- Turn tabs into spaces
    vim.opt_local.tabstop = 4        -- 1 tab = 4 spaces
    vim.opt_local.shiftwidth = 4     -- Indentation amount for auto-indents
    vim.opt_local.softtabstop = 4    -- Makes backspace delete 4 spaces at once
  end,
})
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format({ timeout_ms = 10000 })
end, { desc = "Format current file with clang-format" })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Show diagnostic error" })
require("config.lazy")
