-- ==========================================================================
-- SYSTEM SETTINGS
-- ==========================================================================
vim.opt.number = true          
vim.opt.relativenumber = true  
vim.opt.signcolumn = "yes"
vim.opt.tabstop = 4      -- Number of spaces that a <Tab> character visually counts for
vim.opt.shiftwidth = 4   -- Number of spaces to use for each step of auto-indent
vim.opt.expandtab = true -- Convert every tab you press into spaces
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Show diagnostic error" })
require("config.lazy")
