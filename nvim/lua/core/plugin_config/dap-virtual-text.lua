local dap_vt = require("nvim-dap-virtual-text")

dap_vt.setup({
    enabled = true,                     -- Enable this plugin (true by default)
    enabled_commands = true,            -- Create commands DapVirtualTextEnable, DapVirtualTextDisable, etc.
    highlight_changed_variables = true, -- Highlight changed values with NvimDapVirtualTextChanged
    highlight_new_as_changed = false,   -- Highlight new variables the same as changed variables
    show_stop_reason = true,           -- Show stop reason when stopped for exceptions
    commented = false,                  -- Prefix virtual text with comment string
    only_first_definition = true,      -- Only show virtual text at first definition
    all_frames = false,                -- Show virtual text for all stack frames, not just current
    virt_text_pos = 'eol',            -- Position of virtual text ('eol', 'overlay', 'right_align')
    all_references = false,            -- Show virtual text on all references of the variable
    clear_on_continue = false,         -- Clear virtual text on "continue" (might cause flickering)
    display_callback = function(variable, buf, stackframe, node, options)
        if options.virt_text_pos == 'eol' then
            return ' = ' .. variable.value
        else
            return variable.value
        end
    end,
    -- Expression to evaluate for virtual text
    virt_lines = false,                -- Show virtual lines instead of virtual text
    virt_text_win_col = nil            -- Position the virtual text at a fixed window column
})

