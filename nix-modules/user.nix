{ pkgs, user, ... }: {
  users = {
    defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      description = "Xenosen";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}
