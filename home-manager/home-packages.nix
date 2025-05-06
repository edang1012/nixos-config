{ pkgs, ... }: {

  home.packages = with pkgs; [
    hello
    btop
    eza
    zoxide
  ];
}
