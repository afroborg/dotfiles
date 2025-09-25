return {
  'stevearc/conform.nvim',
  ---@type conform.setupOpts
  opts = {
    formatters = {
      prettier = {
        require_cwd = true,
      },
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      rust = { 'rustfmt' },
      json = { 'prettierd', 'prettier', stop_after_first = true },
      yaml = { 'prettierd', 'prettier', stop_after_first = true },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      svelte = { 'prettierd', 'prettier', stop_after_first = true },
      astro = { 'prettierd', 'prettier', stop_after_first = true },
      zsh = { 'beautysh' },
      bash = { 'beautysh' },
      terraform = { 'terraform_fmt' },

      ['_'] = { 'prettierd', 'prettier', 'trim_whitespace', stop_after_first = true },
    },
    format_on_save = {
      lsp_format = 'fallback',
      timeout_ms = 500,
    },
  },
}
