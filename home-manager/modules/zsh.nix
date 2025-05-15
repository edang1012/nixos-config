{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
        ls = "eza --icons=always";
      };

    history = {
      size = 1000;
      save = 1000;
      share = true;
      path = "${config.xdg.dataHome}/zsh/history";
      ignoreDups = true;
      expireDuplicatesFirst = true;
    };

    initContent = ''
      #if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
      #  exec tmux
      #fi

      # ---- Zoxide (better cd) ----
      eval "$(zoxide init zsh)"
      alias cd="z"
    '';
  };
}
