-- ==========================================================================
-- SYSTEM SETTINGS
-- ==========================================================================
vim.opt.number = true          
vim.opt.relativenumber = true  
vim.opt.signcolumn = "yes"
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Show diagnostic error" })
require("config.lazy")
