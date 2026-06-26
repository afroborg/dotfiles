local servers = {
  lua_ls = {},
  jsonls = {},
}

local tools = {
  'stylua',
}

---@type LazySpec
return {
  'neovim/nvim-lspconfig',
  event = 'VeryLazy',
  cmd = { 'LspInfo', 'LspInstall', 'LspUninstall' },
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'mason-org/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
    { 'saghen/blink.cmp' },
  },
  keys = {
    {
      'ga',
      function()
        vim.lsp.buf.code_action()
      end,
      desc = 'LSP: Code Action',
      mode = { 'n', 'x' },
    },
    {
      '<leader>th',
      function()
        vim.lsp.inlay_hint.toggle()
      end,
      desc = 'LSP: Toggle Inlay Hints',
    },
  },
  config = function()
    local ensure_installed = vim.tbl_keys(servers)
    vim.list_extend(ensure_installed, tools)

    ---@type MasonLspconfigSettings
    ---@diagnostic disable-next-line: missing-fields
    require('mason-lspconfig').setup {
      automatic_enable = {
        exclude = { 'ts_ls' },
      },
    }

    require('mason-tool-installer').setup {
      ensure_installed = ensure_installed,
      run_on_start = true,
      start_delay = 1000,
      debounce_hours = 24,
    }

    for server_name, config in pairs(servers) do
      vim.lsp.config(server_name, config)
    end
  end,
}
