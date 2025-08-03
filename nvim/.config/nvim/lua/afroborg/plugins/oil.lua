return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
  opts = {
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
