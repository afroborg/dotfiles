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
        accept = '<M-a>',
        dismiss = '<M-d>',
        prev = '<M-p>',
        next = '<M-n>',
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
