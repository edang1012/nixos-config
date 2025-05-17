{
    programs.nvf = {
        enable = true;

        settings = {
            vim = {
                viAlias = true; 
                vimAlias = true;

                theme = {
                    enable = true;
                    name = "nord";
                    transparent = true;
                    #style = "dark";
                };

                options = {
                    tabstop = 4;
                    shiftwidth = 4;
                };

                # Alpha Dashboard
                dashboard.alpha = {
                    enable = false;
                    # customization not added yet
                };

                # Autopair: {}, (), [], "". ''''
                autopairs.nvim-autopairs = {
                    enable = true;
                };

                # Add tabs
                tabline.nvimBufferline = {
                    enable = true;
                    setupOpts.options = {
                        style_preset = "minimal";
                    };
                };

                # Better commenting commands
                comments.comment-nvim = {
                    enable = true;
                };

                # Formatter
                formatter.conform-nvim = {
                    enable = true;
                };

                # Gitsigns
                git.gitsigns = {
                    # leaving here for now, idk how to use lol
                    enable = false;
                };

                # Indent guides
                visuals.indent-blankline = {
                    enable = true;
                };

                # Lazygit integration
                terminal.toggleterm.lazygit = {
                    enable = true;
                };

                # Linting tool
                diagnostics.nvim-lint = {
                    enable = true; 
                };

                # Status bar
                statusline.lualine = {
                    enable = true;
                };

                # Autocomplete
                autocomplete.nvim-cmp = {
                    enable = true;
                };

                # File explorer tree
                filetree.nvimTree = {
                    enable = true;
                    openOnSetup = false;
                };

                # Substitute plugin? Not avail rn

                # Surround, add delimiters quickly
                utility.surround = {
                    enable = true;
                };

                # Telescope, search tool
                telescope = {
                    enable = true;
                };

                # ToDo Comments
                notes.todo-comments = {
                    enable = true;
                };

                # Keybind helper menu
                binds.whichKey = {
                    enable = true;
                };

                languages = {
                    # Treesitter, better syntax highlighting
                    enableTreesitter = true;

                    # Enable languages
                    nix.enable = true;
                    clang.enable = true;
                    python.enable = true;
                    lua.enable = true;
                    css.enable = true;
                    markdown.enable = true;
                    bash.enable = true;
                };

                lsp = {
                    enable = true;

                    # Diagnostics viewer
                    trouble.enable = true;
                };
            };
        };
    };
}
