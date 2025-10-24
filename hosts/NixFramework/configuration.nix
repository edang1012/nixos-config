{ config, pkgs, stateVersion, hostname, inputs, ... }:

{
    imports =
        [ # Include the results of the hardware scan.
            ./hardware-configuration.nix
            ./../../nix-modules
        ];

    networking.hostName = hostname; # Define your hostname.

    boot.loader = {
        efi.canTouchEfiVariables = true;
        systemd-boot = {
            enable = true;
            windows = {
                "windows" = 
                let
                    boot-drive = "HD1f0b";
                in
                {
                    title = "Windows";
                    efiDeviceHandle = boot-drive;
                    sortKey = "y_windows";
                };
            };
            #edk2-uefi-shell.enable = true;
            #edk2-uefi-shell.sortKey = "z_edk2";
        }; 
    };

    # Enable networking
    networking.networkmanager.enable = true;
    services.tailscale.enable = true;

    # Enable bluetooth
    services.blueman.enable = true;
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
        settings = {
            General = {
                Experimental = true; # Show battery charge of Bluetooth devices
            };
        };
    };

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the GNOME Desktop Environment.
    services.displayManager.gdm.enable = true;
    services.desktopManager.gnome.enable = true;
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

    # QMK/VIA Settings
    hardware.keyboard.qmk.enable = true;
    services.udev.packages = [ pkgs.via ];

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
        qmk
        via
    ];

    system.stateVersion = stateVersion; 
}
