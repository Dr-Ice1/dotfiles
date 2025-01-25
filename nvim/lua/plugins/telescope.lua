return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
    local trouble = require("trouble.sources.telescope")
    local telescope = require("telescope")
    telescope.setup {
      defaults = {
        layout_config = {
          horizontal = {
            preview_width = 1.0, -- Set the width of the preview window
          },
          vertical = {
        preview_height = 1.8, -- For vertical layout, increase height
      },
      width = 1.95, -- Make the entire Telescope window wider (95% of the screen width)
      height = 1.85, -- Make the Telescope window taller (85% of the screen height)
        },
        layout_strategy = "horizontal", -- Layout with preview on the right
        sorting_strategy = "ascending", -- Sort results from top to bottom
        prompt_prefix = "🔍 ",          -- Customize the search prompt
        selection_caret = " ",         -- Customize the selection caret
        file_ignore_patterns = { ".git/", "node_modules" }, -- Ignore certain files
        dynamic_preview_title = true,  -- Update preview window title dynamically
      },
      pickers = {
        find_files = {
          theme = "dropdown", -- Optional: dropdown style for file finding
          previewer = true,   -- Enable preview for the `find_files` picker
        },
      },
        mappings = {
          i = { ["<c-t>"] = trouble.open },
          n = { ["<c-t>"] = trouble.open },
        },
      }
  end
    }
