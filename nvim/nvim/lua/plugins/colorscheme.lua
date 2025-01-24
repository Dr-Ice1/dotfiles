return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
    config = function()
      vim.cmd('colorscheme solarized-osaka')
    end,
	},
}
