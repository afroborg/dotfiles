local js_formatters = {
  'biome',
  'biome-check',
  'prettierd',
}

return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  ---@type conform.setupOpts
  opts = {
    formatters = {
      prettierd = {
        require_cwd = true,
      },
      biome = {
        require_cwd = true,
      },
      ['biome-check'] = {
        require_cwd = true,
      },
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      rust = { 'rustfmt' },
      json = js_formatters,
      jsonc = js_formatters,
      yaml = js_formatters,
      javascript = js_formatters,
      typescript = js_formatters,
      javascriptreact = js_formatters,
      typescriptreact = js_formatters,
      svelte = js_formatters,
      astro = js_formatters,
      zsh = { 'beautysh' },
      sh = { 'beautysh' },
      bash = { 'beautysh' },
      terraform = { 'terraform_fmt' },
      sql = { 'sqlfluff' },

      ['_'] = { 'prettierd', 'trim_whitespace', stop_after_first = true },
    },
    format_on_save = function(bufnr)
      local lsp_format_opt = 'never'
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
  },
}
