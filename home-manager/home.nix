{ config, pkgs, homeStateVersion, user, ... }: 

{
  #imports = [
    ./modules
  #  ./home-packages.nix
  #];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
