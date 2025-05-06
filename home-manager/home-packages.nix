{ pkgs, ... }: {

  home.packages = with pkgs; [
    # fonts
    noto-fonts-cjk-sans

    # cli
    hello
    btop
    eza
    zoxide
    hyprsunset
  ];

  fonts.fontconfig.enable = true;
}
