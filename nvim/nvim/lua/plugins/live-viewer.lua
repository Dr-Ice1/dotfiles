return{
    'brianhuster/live-preview.nvim',
    dependencies = {
        -- You can choose one of the following pickers
        'nvim-telescope/telescope.nvim',
        'ibhagwan/fzf-lua',
        'echasnovski/mini.pick',
    config = function ()
        -- Automatically save the file when you leave insert mode, and in a few other situations
      vim.o.autowriteall = true  -- Or `:set autowriteall` in Vimscript
        -- Disable swap files
      vim.o.swapfile = false -- Or `:set noswapfile` in Vimscript
      require('livepreview.config').set({
      port = 5173,  -- Use the same port as Vite
      autokill = false,
      browser = 'default',  -- Or specify your browser (e.g., 'firefox', 'chrome')
      dynamic_root = false,
      sync_scroll = true,  -- Enable synchronized scrolling
      picker = nil,  -- Use default picker (you can specify a picker like telescope or fzf-lua)
    })
    end
  },
}
