return {
  'stevearc/conform.nvim',
  opts = {
    formatters = {
      prettier = {
        require_cwd = true,
      },
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      rust = { 'rustfmt' },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      svelte = { 'prettierd', 'prettier', stop_after_first = true },
      zsh = { 'beautysh' },
      bash = { 'beautysh' },
      ['_'] = { 'trim_whitespace' },
    },
    format_on_save = {
      lsp_format = 'fallback',
      timeout_ms = 500,
    },
  },
}
