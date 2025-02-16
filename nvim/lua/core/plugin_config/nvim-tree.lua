vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    git = {
	    enable = true,
	    ignore = false, -- set to false to see files included in gitignore in tree
    },
}

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
