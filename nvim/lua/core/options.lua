local opt = vim.opt

opt.number = true      -- Show line numbers
opt.showcmd = true   -- Show command in bottom bar
opt.autowrite = true -- Automatically write before running commands
opt.autoread = true  -- Automatically read when file is changed from outside

-- Indentation
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
vim.bo.softtabstop = 4

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Line
opt.wrap = false
opt.smartcase = true
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = 'yes'
vim.diagnostic.config = {
    float = { border = 'rounded' },
}

-- Backspace
opt.backspace = 'indent,eol,start'

-- Clipboard
opt.clipboard:append('unnamedplus')

