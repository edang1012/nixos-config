{ pkgs, ... }: {
    programs.tmux = {
        enable = true;
        mouse = true;
        escapeTime = 10;
        keyMode = "vi";
        #terminal = "screen-256color";

        plugins = with pkgs; [
            tmuxPlugins.vim-tmux-navigator
            #tmuxPlugins.cpu
        ];

        extraConfig = ''
            set -g default-terminal "tmux-256color"
            set -ag terminal-overrides ",xterm-256color:RGB"

            set -g prefix C-a
            unbind C-b
            bind-key C-a send-prefix

            unbind %
            bind | split-window -h 

            unbind '"'
            bind - split-window -v

            unbind r
            bind r source-file ~/.tmux.conf

            bind j resize-pane -D 5
            bind k resize-pane -U 5
            bind l resize-pane -R 5
            bind h resize-pane -L 5

            bind -r m resize-pane -Z

            bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
            bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"

            unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse

            # Status Bar (modified from 'arcticicestudio/nord-tmux')
            set -g @prefix_highlight_fg black
            set -g @prefix_highlight_bg brightcyan
            set -g @prefix_highlight_output_prefix "#[fg=brightcyan]#[bg=black]#[nobold]#[noitalics]#[nounderscore]#[bg=brightcyan]#[fg=black]"
            set -g @prefix_highlight_output_suffix ""
            set -g @prefix_highlight_copy_mode_attr "fg=brightcyan,bg=black,bold"

            setw -g clock-mode-colour cyan

            set -g message-style bg=brightblack,fg=cyan
            set -g message-command-style bg=brightblack,fg=cyan

            set -g pane-border-style bg=default,fg=brightblack
            set -g pane-active-border-style bg=default,fg=blue
            set -g display-panes-colour black
            set -g display-panes-active-colour brightblack

            set -g status on
            set -g status-interval 1
            set -g status-justify left
            set -g status-style bg=black,fg=white
            set -g status-right-length 42
            #set-option -g status-position top

            set -g status-left "#[fg=black,bg=blue,bold] #S #[fg=blue,bg=black,nobold,noitalics,nounderscore]"
            set -g status-right "#{prefix_highlight}#[fg=brightblack,bg=black,nobold,noitalics,nounderscore]#[fg=white,bg=brightblack] CPU: #{cpu_percentage} #[fg=white,bg=brightblack,nobold,noitalics,nounderscore]#[fg=white,bg=brightblack] RAM: #{ram_percentage} #[fg=cyan,bg=brightblack,nobold,noitalics,nounderscore]#[fg=black,bg=cyan,bold] #H "

            set -g window-status-format "#[fg=black,bg=brightblack,nobold,noitalics,nounderscore] #[fg=white,bg=brightblack]#I #[fg=white,bg=brightblack,nobold,noitalics,nounderscore] #[fg=white,bg=brightblack]#W #F #[fg=brightblack,bg=black,nobold,noitalics,nounderscore]"
            set -g window-status-current-format "#[fg=black,bg=cyan,nobold,noitalics,nounderscore] #[fg=black,bg=cyan]#I #[fg=black,bg=cyan,nobold,noitalics,nounderscore] #[fg=black,bg=cyan]#W #F #[fg=cyan,bg=black,nobold,noitalics,nounderscore]"
            set -g window-status-separator ""
        '';
    };
}
