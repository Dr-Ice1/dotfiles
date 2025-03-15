require("core")
require('plugins.nvim-cmp')
require('lualine').setup()

require('lspconfig').texlab.setup({})
require('lspconfig').pyright.setup{}


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

