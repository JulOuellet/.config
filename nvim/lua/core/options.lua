local opt = vim.opt

-- General
opt.number = true
opt.showcmd = true
opt.autowrite = true
opt.autoread = true

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

