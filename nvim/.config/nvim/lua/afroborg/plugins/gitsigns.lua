return {
  'lewis6991/gitsigns.nvim',
  event = 'VeryLazy',
  opts = {
    current_line_blame = true,
    current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
    current_line_blame_opts = {
      virt_text_pos = 'eol',
      delay = 1000,
      ignore_whitespace = true,
    },
  },
}
