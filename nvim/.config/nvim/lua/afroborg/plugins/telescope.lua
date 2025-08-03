return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  commit = 'b4da76be54691e854d3e0e02c36b0245f945c2c7', -- todo: remove this once fixed
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    'nvim-telescope/telescope-ui-select.nvim',
  },
  event = 'VimEnter',
  config = function()
    local telescope = require 'telescope'
    local telescopeConfig = require 'telescope.config'
    local args = { unpack(telescopeConfig.values.vimgrep_arguments) }

    table.insert(args, '--hidden')
    table.insert(args, '--glob')
    table.insert(args, '!**/.git/*')

    telescope.setup {
      defaults = {
        mappings = {
          i = {
            ['<C-h>'] = 'which_key',
            ['<C-d>'] = require('telescope.actions').preview_scrolling_down,
            ['<C-u>'] = require('telescope.actions').preview_scrolling_up,
            ['<C-x>'] = require('telescope.actions').delete_buffer,
          },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_cursor {},
        },
      },
      pickers = {
        find_files = {
          -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' },
        },
      },
    }

    pcall(telescope.load_extension, 'fzf')
    pcall(telescope.load_extension, 'ui-select')

    vim.keymap.set('n', '<leader>sf', '<cmd>Telescope find_files<cr>')
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
    vim.keymap.set('n', '<leader>sg', '<cmd>Telescope git_files<cr>')
    vim.keymap.set('n', '<leader>st', '<cmd>Telescope live_grep<cr>')
    vim.keymap.set('n', '<leader>sw', '<cmd>Telescope grep_string<cr>')
    vim.keymap.set('n', '<leader>fb', '<cmd>Telescope file_browser<cr>')
  end,
}
