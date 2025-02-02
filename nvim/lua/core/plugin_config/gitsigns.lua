require('gitsigns').setup({
    signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
    },
    -- Keymaps for normal mode
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
        end, {expr=true})

        map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
        end, {expr=true})

        -- Actions
        map('n', '<leader>hs', gs.stage_hunk)            -- Stage hunk
        map('n', '<leader>hr', gs.reset_hunk)            -- Reset hunk
        map('v', '<leader>hs', function()                -- Stage selected lines
            gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')}
        end)
        map('v', '<leader>hr', function()                -- Reset selected lines
            gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')}
        end)
        map('n', '<leader>hS', gs.stage_buffer)          -- Stage buffer
        map('n', '<leader>hu', gs.undo_stage_hunk)       -- Undo stage hunk
        map('n', '<leader>hR', gs.reset_buffer)          -- Reset buffer
        map('n', '<leader>hp', gs.preview_hunk)          -- Preview hunk
        map('n', '<leader>hb', function()                -- Blame line
            gs.blame_line{full=true}
        end)
        map('n', '<leader>tb', gs.toggle_current_line_blame)  -- Toggle line blame
        map('n', '<leader>hd', gs.diffthis)              -- Diff against index
        map('n', '<leader>hD', function()                -- Diff against last commit
            gs.diffthis('~')
        end)
        map('n', '<leader>td', gs.toggle_deleted)        -- Toggle deleted lines
    end,
    -- Update signs in the sign column when the text changes
    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
    },
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,  -- Use default
    preview_config = {
        -- Options passed to nvim_open_win
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
    }
})

