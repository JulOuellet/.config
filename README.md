# .config
Some config files for my \*nix setup.


## Nvim
In the nvim folder are the config files for my current Neovim configuration. It is highly modular and built from scratch using exlusively the Lua scripting language.


### Change colorscheme
Change the colorscheme already installed:
- Editor: In **nvim/lua/core/plugin_config/init.lua**, uncomment the desired colorscheme under `-- colorschemes`.
- Lualine: In **nvim/lua/core/plugin_config/lualine.lua**, uncomment the desired colorscheme under `-- set active colorscheme here`.

> #### List of installed colorschemes
>
> - Catpuccin   - https://github.com/catppuccin/catppuccin
> - Gruvbox     - https://github.com/ellisonleao/gruvbox.nvim
> - Nord        - https://github.com/shaunsingh/nord.vim

TODO: Add lsp  
TODO: Add keybinds
