{ pkgs, ... }: {

    fonts.fontconfig.enable = true;

    home.pointerCursor = {
        gtk.enable = true;
        x11.enable = true;
        package = pkgs.nordzy-cursor-theme;
        name = "Nordzy-cursors";
        size = 16;
    };

    gtk = {
        enable = true;
        theme = {
            name = "Nordic";
            package = pkgs.nordic;
        };
        iconTheme = {
            name = "Nordzy";
            package = pkgs.nordzy-icon-theme;
        };
        cursorTheme = {
            name = "Nordzy-cursors";
            package = pkgs.nordzy-cursor-theme;
        };
    };

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
        hyprpicker
        wlsunset
        brightnessctl
        playerctl
        libnotify
        #gpu-screen-recorder

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
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/spotify.png";
        };
        discord = { 
            name = "Discord"; 
            exec = "vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland"; 
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/discord.png";
        };
        obsidian = { 
            name = "Obsidian"; 
            exec = "obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland";
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/obsidian.png";
        };
    };
}
