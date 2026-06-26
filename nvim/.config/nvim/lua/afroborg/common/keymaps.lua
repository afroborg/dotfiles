vim.g.mapleader = ' '

local km = vim.keymap

km.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
km.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
km.set('n', '<leader>se', '<C-w>=', { desc = 'Equalize split sizes' })
km.set('n', '<leader>sx', ':close<CR>', { desc = 'Close current split' })

km.set('n', '<leader>o', ':so %<CR>', { desc = 'Source current file', silent = true })
km.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Show diagnostic message' })

km.set('n', 'gEn', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to next diagnostic message' })
km.set('n', 'gEp', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to previous diagnostic message' })
