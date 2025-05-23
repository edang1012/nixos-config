{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        ignore_dbus_inhibit = false;
        before_sleep_cmd = "loginctl lock-session"; 
        after_sleep_cmd = "hyprctl dispatch dpms on";
        lock_cmd = "pidof hyprlock || hyprlock";
      };

      listener = [
        {
          timeout = 600;
          on-timeout = "loginctl lock-session";
        }
        {
          timeout = 1200;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
        {
          timeout = 1800;
          on-timeout = "sysemctl suspend";
        }
      ];
    };
  };
}
