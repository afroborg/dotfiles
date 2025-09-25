return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@module 'snacks'
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true },
    lazygit = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    picker = {
      enabled = true,
      matcher = {
        frecency = true,
      },
    },
  },
  keys = {
    -- Picker
    {
      '<leader>ff',
      function()
        Snacks.picker.smart()
      end,
      desc = 'Smart find files',
    },
    {
      '<leader>fF',
      function()
        Snacks.picker.files { hidden = true, ignored = true }
      end,
      desc = 'Find files',
    },
    {
      '<leader>fs',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Search with grep',
    },
    {
      '<leader>fb',
      function()
        Snacks.picker.buffers()
      end,
      desc = 'Find buffers',
    },
    {
      '<leader>/',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = 'Grep',
    },
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto Definition',
    },
    {
      'gD',
      function()
        Snacks.picker.lsp_declarations()
      end,
      desc = 'Goto Declaration',
    },
    {
      'gr',
      function()
        Snacks.picker.lsp_references()
      end,
      desc = 'References',
    },
    {
      'gI',
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = 'Goto Implementation',
    },
    {
      'gy',
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = 'Goto T[y]pe Definition',
    },
    -- Lazygit
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Toggle lazygit',
    },
  },
}
