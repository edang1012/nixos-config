{ config, pkgs, ... }:

{
    # Enable dconf (System Management Tool)
    programs.dconf.enable = true;

    # Add user to libvirtd group
    users.users.xenosen.extraGroups = [ "libvirtd" ];

    # Install necessary packages
    environment.systemPackages = with pkgs; [
        virt-manager
        virt-viewer
        spice
        spice-gtk
        spice-protocol
        spice-vdagent
        win-virtio
        win-spice
        remmina
    ];

    # Manage the virtualisation services
    virtualisation = {
        libvirtd = {
            enable = true;
            qemu = {
                swtpm.enable = true;
                ovmf.enable = true;
                ovmf.packages = [ pkgs.OVMFFull.fd ];
                vhostUserPackages = [ pkgs.virtiofsd ];
            };
        };
        spiceUSBRedirection.enable = true;
    };
    services.spice-vdagentd.enable = true;

    # Enable RDP for remote desktop
    services.xrdp.enable = true;
    services.xrdp.defaultWindowManager = "startplasma-x11";
    services.xrdp.openFirewall = true;
}
