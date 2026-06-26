---@diagnostic disable: missing-fields
---@type LazySpec
return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  build = ':Copilot auth',
  event = 'InsertEnter',
  ---@module 'copilot'
  ---@type CopilotConfig
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      hide_during_completion = false,
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
      yaml = true,
      yml = true,
      help = true,
    },
  },
}
