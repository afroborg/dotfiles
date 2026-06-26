local opt = vim.o

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.swapfile = false

opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- disable unused remote-plugin providers (faster startup, cleaner :checkhealth)
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
