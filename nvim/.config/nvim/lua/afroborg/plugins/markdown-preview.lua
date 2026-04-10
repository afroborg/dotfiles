return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreview' },
  build = 'cd app && npm install && git restore .',
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
  end,
  ft = { 'markdown' },
}
