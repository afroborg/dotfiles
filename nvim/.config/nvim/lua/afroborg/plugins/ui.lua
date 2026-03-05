return {
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup {}

      vim.cmd 'colorscheme github_dark_default'
    end,
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
      {
        '<leader>?',
        function()
          require('which-key').show { global = false }
        end,
        desc = 'Buffer Local Keymaps (which-key)',
      },
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
      local mini_icons = require 'mini.icons'

      local function filetype_icon()
        local icon, hl = mini_icons.get('filetype', vim.bo.filetype)
        if icon == nil then
          return ''
        end
        return icon .. ' '
      end

      require('lualine').setup {
        sections = {
          lualine_c = {
            filetype_icon,
            { 'filename', path = 1 },
          },
        },
      }
    end,
  },
  {
    'rachartier/tiny-inline-diagnostic.nvim',
    event = 'VeryLazy',
    priority = 1000,
    config = function()
      require('tiny-inline-diagnostic').setup()
      vim.diagnostic.config { virtual_text = false } -- Disable Neovim's default virtual text diagnostics
    end,
  },
}
