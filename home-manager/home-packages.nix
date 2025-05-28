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
        # theme messes with swayosd CSS :(
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
        syshud
        ffmpeg
        unzip
        zip
        wev
        #sysmenu
        #gpu-screen-recorder

        # apps
        obs-studio
        obsidian
        libreoffice
        spek
        vesktop    
];

    # Add arguments to fix DPI/scaling on wayland
    xdg.desktopEntries = {
        #spotify = { 
        #    name = "Spotify";
        #    exec = "spotify";
        #    icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/spotify.png";
        #};
        discord = { 
            name = "Discord"; 
            exec = "vesktop"; 
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/discord.png";
        };
        #obsidian = { 
        #    name = "Obsidian"; 
        #    exec = "obsidian";
        #    icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/obsidian.png";
        #};
    };
}
