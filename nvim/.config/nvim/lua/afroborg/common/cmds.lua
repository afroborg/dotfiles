vim.api.nvim_create_user_command('NvimConfig', function()
  vim.cmd 'edit ~/.config/nvim'
end, { desc = 'Open Neovim config directory' })
