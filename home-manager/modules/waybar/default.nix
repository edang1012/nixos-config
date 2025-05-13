{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
	position = "top";
	height = 20;
	margin-top = 10;
	margin-left = 10;
	margin-right = 10;
	margin-bottom = 0;
	spacing = 10;

	modules-left = [
	  "hyprland/workspaces"
	  "hyprland/window"
	  "custom/media"
	];
	modules-center = [
	  "clock"
	];
	modules-right = [
	  "cpu"
	  "memory"
	  "temperature"
	  "network"
	  "pulseaudio"
	  "power-profiles-daemon"
	  "battery"
	  "custom/notification"
	  "custom/power"
	];

	"clock" = {
	  "format" = "󰃰   {:%a, %b. %d - %I:%M %p}";
          "tooltip-format" = "<tt><big>{calendar}</big></tt>";
          "calendar" = {
	    "mode" = "month";
	    "mode-mon-col" = 3;
	    "weeks-pos" = "right";
	    "on-scroll" = 1;
	    "format" = {
	      "months" = "<span color='#ffead3'><b>{}</b></span>";
	      "days" = "<span color='#ecc6d9'><b>{}</b></span>";
	      "weeks" = "<span color='#99ffdd'><b>W{}</b></span>";
	      "weekdays" = "<span color='#ffcc66'><b>{}</b></span>";
	      "today" = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
	  "actions" = {
	    "on-click-right" = "mode";
	  };
        };

	"cpu" = {
          "format" = "    {usage}%";
	};

        "memory" = {
          "format" = "     {percentage}%";
	  "tooltip-format" = "RAM: {used}/{total} GB\nSwap: {swapUsed}/{swapTotal} GB";
	};

	"temperature" = {
	  "format" = "{temperatureC}°C  ";
	  "tooltip-format" = "Fahrenheit: {temperatureF}°F\nKelvin: {temperatureK}K";
	};

        "battery" = {
	  "interval" = 1;
          "states" = {
            "good" = 95;
            "warning" = 30;
            "critical" = 15;
          };
          "format" = "{capacity}%  {icon}";
          "format-full" = "{capacity}%  {icon}";
          "format-charging" = "{capacity}%  󰂄";
          "format-plugged" = "{capacity}%  ";
          "format-alt" = "{time} {icon}";
	  "format-icons" = ["󰂎" "󰁻" "󰁾" "󰂀" "󰁹"];
	  "tooltip-format" = "{timeTo}\nPower: {power}W\nCycles: {cycles}\nHealth: {health}%";
        };

	"power-profiles-daemon" = {
          "format" = "{icon}";
          "tooltip-format" = "Power profile: {profile}";
          "tooltip" = true;
          "format-icons" = {
            "default" = "";
            "performance" = "";
            "balanced" = "";
            "power-saver" = "";
          };
        };

        "pulseaudio" = {
          "scroll-step" = 1;
          "format" = "{icon}";
	  "format-bluetooth" = "{icon}";
	  "format-muted" = "";
          "format-icons" = {
            "headphone" = "";
	    "default" = ["" "" ""];
          };
	  "tooltip-format" = "{desc} - {volume}%";
          "on-click" = "pavucontrol";
        };

	"network" = {
          "format" = "{ifname}";
          "format-wifi" = "󰖩";
          "format-ethernet" = "󰈀";
          "format-disconnected" = "󰖪";
          "tooltip-format" = "{ifname}";
          "tooltip-format-wifi" = "{essid} - {frequency}GHz ({signalStrength}%)";
          "tooltip-format-ethernet" = "{ifname}";
          "tooltip-format-disconnected" = "Disconnected";
          "max-length" = 50;
        };

	"hyprland/workspaces" = {
          "format" = "{icon}:  {windows}";
          "format-window-separator" = " ";
	  "persistent-workspaces" = {
	    "*" = 3;
	  };
          "window-rewrite-default" = "";
          "window-rewrite" = {
            "class<firefox>" = "󰈹";
	    "class<spotify>" = "";
	    "class<obsidian>" = "󱓧";
	    "title<.*discord.*>" = "";
            "term" = "";
	  };
        };

        "hyprland/window" = {
          "format" = "{initialTitle}";
	  "icon" = false;
          "rewrite" = {
	    "(.*) Obsidian (.*)" = "Obsidian";
            "Mozilla Firefox" = "Firefox";
	    "Spotify Premium" = "Spotify";
	    "vesktop" = "Discord";
	    "wezterm" = "WezTerm";
	    "Loading..." = "Nautilus";
	    "" = "Desktop";
          };
          "separate-outputs" = true;
	  "tooltip" = false;
        };
        
	"custom/notification" = {
          "tooltip" = false;
          "format" = "{icon}";
          "format-icons" = {
            "notification" = "󱅫";
            "none" = "󰂚";
            "dnd-notification" = "󱏧";
            "dnd-none" = "󰂛";
            "inhibited-notification" = "󱏫";
            "inhibited-none" = "󱏫";
            "dnd-inhibited-notification" = "󱏧";
            "dnd-inhibited-none" = "󰂛";
          };
          "return-type" = "json";
          "exec-if" = "which swaync-client";
          "exec" = "swaync-client -swb";
          "on-click" = "swaync-client -t -sw";
          "on-click-right" = "swaync-client -d -sw";
          "escape" = true;
        };

        "custom/media" = {
          "format" = "{icon}  {}";
	  "format-icons" = {
            "Playing" = "󰝚 ";
            "Paused" = " ";
          };
          "return-type" = "json";
          "max-length" = 70;
          "exec" = "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
          "on-click" = "playerctl play-pause";
        };
        
	"custom/power" = {
	  "format" = "⏻";
	  "interval" = "once";
	  "on-click" = "wlogout";
	};

      };
    };

    # Style
    style = ''
        * {
          font-family: "Noto Sans CJK JP";
	  font-weight: bold;
	  font-size: 14px;
	}

	window#waybar {
          background: transparent;
	  border: 0px solid #88c0d0;
          border-radius: 6px;
        }

        .modules-left>widget:first-child .module {
          margin-left: 0px;
        }

        .modules-right>widget:last-child .module {
          margin-right: 0px;
        }

        #clock, #battery, #cpu, #memory, 
	#temperature, #window, #custom-media {
          color: #88c0d0;
	  background-color: #3b4252;
          padding-left: 10px;
	  padding-right: 10px;
          margin-top: 0px; 
	  margin-bottom: 0px;
	  border: 2px solid #88c0d0;
	  border-radius: 6px;
	}

	#custom-notification {
          color: #88c0d0;
	  background-color: #3b4252;
          padding-left: 10px;
	  padding-right: 12px;
          margin-top: 0px; 
	  margin-bottom: 0px;
	  border: 2px solid #88c0d0;
	  border-radius: 6px;
	}

	#network, #pulseaudio, #power-profiles-daemon {
          color: #88c0d0;
	  background-color: #3b4252;
          padding-left: 10px;
	  padding-right: 14px;
          margin-top: 0px; 
	  margin-bottom: 0px;
	  border: 2px solid #88c0d0;
	  border-radius: 6px;
	}

	#custom-power {
          color: #88c0d0;
	  background-color: #3b4252;
          padding-left: 10px;
	  padding-right: 13px;
          margin-top: 0px; 
	  margin-bottom: 0px;
	  border: 2px solid #88c0d0;
	  border-radius: 6px;
	}


	#workspaces {
          color: #88c0d0;
	  background-color: #3b4252;
	  border: 2px solid #88c0d0;
	  border-radius: 6px;
	}

	#workspaces button {
          color: #88c0d0;
        }

        #workspaces button.active {
          color: #88c0d0;
	  background-color: #4c566a;
	  border-radius: 6px;
        }

	#workspaces button:hover {
          background: #4c566a;
	  border-color: transparent;
          box-shadow: none;
          text-shadow: none;
	  transition: none;
        }	
	#workspaces button:hover.active {
          background: #4c566a;
	  border-color: transparent;
	  border-radius: 6px;
          box-shadow: none;
          text-shadow: none;
	  transition: none;
        }

	tooltip {
          background: #3b4252;
          border: 2px solid #88c0d0;
        }
        tooltip label {
          color: #88c0d0;
        }
    ''; 
  };
}
