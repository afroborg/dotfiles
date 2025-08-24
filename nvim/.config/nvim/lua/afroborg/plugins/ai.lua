return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  build = ':Copilot auth',
  event = 'InsertEnter',
  opts = {
    suggestion = {
      enabled = not vim.g.ai_cmp,
      auto_trigger = true,
      hide_during_completion = vim.g.ai_cmp,
      keymap = {
        accept = '<C-l>',
        dismiss = '<C-e>',
        prev = '<C-k>',
        next = '<C-j>',
      },
    },
    panel = {
      enabled = true,
      keymap = {
        accept = '<CR>',
        jump_prev = '[[',
        jump_next = ']]',
        refresh = 'gr',
        open = '<M-CR>',
      },
    },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
