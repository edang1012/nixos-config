{ pkgs, ... }: {

    fonts.fontconfig.enable = true;
    programs.kitty.enable = true;
    programs.kitty.themeFile = "Nord";

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
        #hyprsunset
        wlsunset
        brightnessctl
        playerctl
        libnotify
        syshud
        #sysmenu
        nwg-drawer
        wl-clipboard
        ffmpeg
        unzip
        zip
        wev

        # gaming
        #gpu-screen-recorder
        mangohud
        protonup
        protonup-qt
        lutris
        bottles
        wine
        winetricks

        # apps
        audacity
        feishin
        krita
        libreoffice
        mediawriter
        mpv
        obs-studio
        obsidian
        pinta
        spek
        spotify
        transmission_4-gtk
        via
        vial
        vlc
        vesktop
        whipper
    ];

    home.sessionVariables = {
        STEAM_EXTRA_COMPAT_TOOLS_PATHS =
            "\\\${HOME}/.steam/root/compatibilitytools.d";
    };

    # Add arguments to fix DPI/scaling on wayland
    xdg.desktopEntries = {
        discord = { 
            name = "Discord"; 
            exec = "vesktop"; 
            icon = "/home/xenosen/Documents/git/nixos-config/home-manager/icons/discord.png";
        };
    };

    dconf.settings = {
        "org/virt-manager/virt-manager/connections" = {
            autoconnect = ["qemu:///system"];
            uris = ["qemu:///system"];
        };
    };

    services.clipse = {
        enable = true;
        theme = {
            useCustomTheme = true;
            TitleFore = "#d8dee9";
            TitleInfo = "#a3be8c";
            NormalTitle = "#88c0d0";
            DimmedTitle = "#88c0d0";
            SelectedTitle = "#ebcb8b";
            NormalDesc = "#d8dee9";
            DimmedDesc = "#d8dee9";
            SelectedDesc = "#ebcb8b";
            SelectedDescBorder = "#88c0d0";
            StatusMsg = "#b48ead";
            PreviewedText = "#d8dee9";
            PreviewBorder = "#a3be8c";
            FilteredMatch = "#ebcb8b";
            FilterPrompt = "#d8dee9";
            FilterText = "#88c0d0";
            FilterCursor = "#88c0d0";
            PinIndicatorColor = "#bf616a";
            PageActiveDot = "#a3be8c";
            PageInactiveDot = "#4c566a";
            DividerDot = "#bf616a";
            HelpKey = "#88c0d0";
            HelpDesc = "#d8dee9";
        };
    };
}
