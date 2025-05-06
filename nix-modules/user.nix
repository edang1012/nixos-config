{ user, ... }: {
  users = {
    users.${user} = {
      isNormalUser = true;
      description = "Xenosen";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}
