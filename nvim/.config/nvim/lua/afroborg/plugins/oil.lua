return {
  'stevearc/oil.nvim',
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
  opts = {
    keymaps = {
      ['<C-h>'] = false,
      ['<C-l>'] = false,
      ['.'] = { 'actions.cd', mode = 'n' },
    },
    columns = {
      'icon',
    },
    view_options = {
      show_hidden = true,
    },
  },
  watch_for_changes = true,
  keys = {
    { '<leader>e', '<cmd>Oil<CR>', desc = 'Open Oil (file explorer)' },
  },
}
