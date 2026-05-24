return {
  "loctvl842/monokai-pro.nvim",
  -- Crucial: Tell lazy.nvim to load the theme immediately upon startup
  lazy = false, 
  -- Crucial: Give it the highest priority so it loads before other plugins
  priority = 1000, 
  config = function()
    require("monokai-pro").setup({
      -- Choose your favorite VSCode Monokai filter here
      -- Options: "pro", "classic", "octagon", "machine", "ristretto", "spectrum"
      filter = "classic", 
      
      -- Enable this if you want your terminal's background image to show through
      transparent_background = false,
      
      -- Optional: Make comments and keywords italic
      inc_search = "background",
      background_clear = {
        "telescope",
        "neo-tree",
      },
      styles = {
        comment = { italic = true },
        keyword = { italic = true }, 
        type = { italic = false },
      },
    })
    
    -- Finally, tell Neovim to apply the colorscheme
    vim.cmd.colorscheme("monokai-pro")
  end,
}
