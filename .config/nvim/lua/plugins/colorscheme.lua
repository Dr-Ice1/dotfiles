return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      transparent_mode = true,  -- Enable transparent background
    })
    vim.cmd("colorscheme gruvbox")  -- Apply the Gruvbox colorscheme
  end,
}

