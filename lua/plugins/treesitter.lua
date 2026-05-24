return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main", -- Explicitly track the new rewrite branch
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    
    -- 1. Install parsers explicitly (this is a no-op if already installed)
    -- Using :wait() ensures they finish downloading before the file loads
    ts.install(
      { "c", "cpp", "lua", "vim", "vimdoc" }, 
      { summary = false }
    ):wait(30000)

    -- 2. Manually enable Highlighting and Indentation via Neovim autocmds
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("TreesitterSetup", { clear = true }),
      pattern = "*",
      callback = function(event)
        local lang = vim.treesitter.language.get_lang(event.match) or event.match
        
        -- Try to start the treesitter parser for syntax highlighting
        pcall(vim.treesitter.start, event.buf, lang)
        
        -- Enable treesitter-based indentation
        vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
