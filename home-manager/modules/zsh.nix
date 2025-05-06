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
  };
}
