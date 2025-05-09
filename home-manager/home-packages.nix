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
    #hyprsunset
    #hyprshade
    wlsunset
    brightnessctl
    playerctl
    libnotify
    spotify
    spicetify-cli
  ];

  # Add arguments to fix DPI/scaling on wayland
  xdg.desktopEntries =  {
    spotify = { name = "Spotify"; exec = "spotify --enable-features=UseOzonePlatform --ozone-platform=wayland"; };
  };
}
