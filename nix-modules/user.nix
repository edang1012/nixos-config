{ pkgs, user, ... }: {
    programs.zsh.enable = true;

    users = {
        defaultUserShell = pkgs.zsh;
        users.${user} = {
            isNormalUser = true;
            description = "Xenosen";
            extraGroups = [ "networkmanager" "wheel" ];
        };
    };
}
