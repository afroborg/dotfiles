---@type LazySpec
return {
  'folke/lazydev.nvim',
  ft = 'lua', -- only load on lua files
  ---@module 'lazydev'
  ---@type lazydev.Config
  opts = {
    library = {
      'lazy.nvim',
      'snacks.nvim',
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
    },
  },
}
