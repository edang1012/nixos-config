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
    hyprshade
    brightnessctl
    playerctl
  ];

  fonts.fontconfig.enable = true;
}
