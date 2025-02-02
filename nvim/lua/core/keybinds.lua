vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Debugging keybindings
vim.keymap.set('n', '<F5>', require('dap').continue)
vim.keymap.set('n', '<F10>', require('dap').step_over)
vim.keymap.set('n', '<F11>', require('dap').step_into)
vim.keymap.set('n', '<F12>', require('dap').step_out)
vim.keymap.set('n', '<leader>b', require('dap').toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function() 
    require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)
vim.keymap.set('n', '<leader>dr', require('dap').repl.open)
vim.keymap.set('n', '<leader>dl', require('dap').run_last)

-- Java specific keybindings (these will be enhanced when in a Java file)
vim.keymap.set('n', '<leader>jc', function()
    if vim.bo.filetype == "java" then
        require('jdtls.dap').setup_dap_main_class_configs()
    end
end)

