require('lualine').setup {
    options = {
	icons_enabled = true,

	-- set active colorscheme here --
	-- theme = 'nord',
	theme = 'catppuccin',
	-- theme = 'gruvbox',
    },
    sections = {
	lualine_a = {
	    {
		'filename',
		path  = 1,
	    }
	}
    }
}
