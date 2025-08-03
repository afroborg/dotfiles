return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = {
        'lua',
        'vim',
        'vimdoc',
        'json',
        'javascript',
        'typescript',
        'tsx',
        'yaml',
        'html',
        'css',
        'bash',
        'dockerfile',
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
