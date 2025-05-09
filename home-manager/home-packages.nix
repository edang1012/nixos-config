{ pkgs, ... }: {

  home.packages = with pkgs; [
    # fonts
    noto-fonts-cjk-sans

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
  ];

  fonts.fontconfig.enable = true;
}
