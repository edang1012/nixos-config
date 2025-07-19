{ config, pkgs, stateVersion, hostname, inputs, ... }:

{
    imports =
        [ # Include the results of the hardware scan.
            ./hardware-configuration.nix
            ./../../nix-modules
        ];

    networking.hostName = hostname; # Define your hostname.

    # Enable networking
    networking.networkmanager.enable = true;

    services.tailscale.enable = true;

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the GNOME Desktop Environment.
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    services.gvfs.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };

    # Enable fingerprint scanner
    services.fprintd.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Framework firmware updater
    services.fwupd.enable = true;

    # Enable for gaming
    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };

    services.xserver.videoDrivers = ["amdgpu"];

    # Install common apps
    programs.firefox.enable = true;
    programs.thunderbird.enable = true;

    programs.steam.enable = true;
    programs.steam.gamescopeSession.enable = true;
    programs.gamemode.enable = true;

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        home-manager
        vim
        wget
        kitty
        python3
        gnumake
        gcc
    ];

    system.stateVersion = stateVersion; 
}
