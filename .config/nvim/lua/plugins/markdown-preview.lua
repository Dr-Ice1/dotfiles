return{
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown", "md" }
  end,
  ft = { "markdown" ,'md'},
  config = function ()
    vim.g.mkdp_browser = 'google-chrome'
    vim.g.mkdp_theme = 'light'
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = {},
      maid = { theme = "default" },
      disable_sync_scroll = 0,
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
      content_editable = false,
      disable_filename = 0,
      toc = {},
      mermaid_js = "https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.min.js"
      }
    vim.g.mkdp_port = "8888"
    vim.g.mkdp_auto_refresh = 1
    vim.g.mkdp_auto_close = 0
  end
}
