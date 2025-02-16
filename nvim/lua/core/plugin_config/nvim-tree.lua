vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    git = {
	    enable = true
    },
    filters = {
        git_ignored = true,
        exclude = { -- Show these files in the tree, even if they are included in the gitignore
            ".env",
            ".env.*",
            "target"
        }
    }
}

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
