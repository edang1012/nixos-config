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

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the GNOME Desktop Environment.
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };

    # Enable fingerprint scanner
    services.fprintd.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Install firefox.
    programs.firefox.enable = true;

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        home-manager
        vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        wget
        kitty
        python3
        gnumake
        gcc
    ];

    system.stateVersion = stateVersion; 
}
