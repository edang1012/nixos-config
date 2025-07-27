{ config, ...}: 
{
    imports = [
        # Folders
        ./easyeffects
        ./hyprland
        ./waybar

        # nix files
        ./anyrun.nix
        ./fastfetch.nix
        ./nvf.nix
        #./spicetify.nix
        ./starship.nix
        ./swaync.nix
        ./tmux.nix
        ./wezterm.nix
        ./zsh.nix
        
        # Unused
        #./oh-my-posh.nix
        #./swayosd
        #./wlogout.nix
        #./wofi.nix
    ];

    home.file.".config/sys64/hud/" = {
        source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Documents/git/nixos-config/home-manager/modules/syshud";
        recursive = true;
    };

    #home.file.".config/sys64/menu/" = {
    #    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Documents/git/nixos-config/home-manager/modules/sysmenu";
    #    recursive = true;
    #};
}
