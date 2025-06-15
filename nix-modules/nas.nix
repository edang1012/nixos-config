{
    networking.hosts = {
        "192.168.1.170" = [ "XenNAS" ];
    };

    fileSystems."/home/xenosen/XenNAS/Music" = {
        device = "XenNAS:/mnt/user/Music";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    fileSystems."/home/xenosen/XenNAS/Video" = {
        device = "XenNAS:/mnt/user/Video";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    fileSystems."/home/xenosen/XenNAS/Documents" = {
        device = "XenNAS:/mnt/user/Documents";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    fileSystems."/home/xenosen/XenNAS/Photos" = {
        device = "XenNAS:/mnt/user/Photos";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };
    # optional, but ensures rpc-statsd is running for on demand mounting
    boot.supportedFilesystems = [ "nfs" ];
}
