return {
  'stevearc/oil.nvim',
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
  opts = {
    keymaps = {
      ['<C-h>'] = false,
    },
    columns = {
      'icon',
    },
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { '<leader>e', '<cmd>Oil<CR>', desc = 'Open Oil (file explorer)' },
  },
}
