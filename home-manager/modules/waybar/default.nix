{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
	position = "top";
	height = 30;
	spacing = 4;
	modules-left = [
	  "hyprland/workspaces"
	  "hyprland/window"
	];
	modules-center = [
	  "clock"
	];
	modules-right = [
	  "custom/media"
	  "cpu"
	  "memory"
	  "power-profiles-daemon"
	  "temperature"
	  "network"
	  "pulseaudio"
	  "battery"
	];

	"clock" = {
	  "format" = "{:%a, %b. %d - %I:%M %p}";
          "tooltip-format" = ''
            <big>{:%Y %B}</big>
            <tt><small>{calendar}</small></tt>
	  '';
	};
      };
    };
  };
}
