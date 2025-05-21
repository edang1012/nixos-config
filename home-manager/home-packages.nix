{ pkgs, ... }: {

    fonts.fontconfig.enable = true;

    home.packages = with pkgs; [
        # fonts
        noto-fonts-cjk-sans
        nerd-fonts.jetbrains-mono

        # cli
        hello
        btop
        eza
        zoxide
        hyprshot
        wlsunset
        brightnessctl
        playerctl
        libnotify

        # apps
        vesktop
        obsidian

        # Official discord, but doesn't really work
        #discord
        #(discord.override {
        #  withVencord = true;
        #})
    ];

    # Add arguments to fix DPI/scaling on wayland
    xdg.desktopEntries = {
        spotify = { 
            name = "Spotify"; 
            exec = "spotify --enable-features=UseOzonePlatform --ozone-platform=wayland"; 
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/spotify.svg";
        };
        discord = { 
            name = "Discord"; 
            exec = "vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland"; 
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/discord.svg";
        };
        obsidian = { 
            name = "Obsidian"; 
            exec = "obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland";
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/obsidian.svg";
        };
    };
}
