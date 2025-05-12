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
	  "format" = "󰃰   {:%a, %b. %d - %I:%M %p}";
          "tooltip-format" = "<tt><small>{calendar}</small></tt>";
          "calendar" = {
	    "mode" = "year";
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
          "format" = "   {usage}%";
	};

        "memory" = {
          "format" = "    {percentage}%";
	};

	"temperature" = {
	  "format" = "{temperatureC}°C  ";
	};

        "battery" = {
	  "interval" = 1;
          "states" = {
            "good" = 95;
            "warning" = 30;
            "critical" = 15;
          };
          "format" = "{capacity}% {icon}";
          "format-full" = "{capacity}% {icon}";
          "format-charging" = "{capacity}% 󰂄";
          "format-plugged" = "{capacity}% ";
          "format-alt" = "{time} {icon}";
	  "format-icons" = ["󰂎" "󰁻" "󰁾" "󰂀" "󰁹"];
        };

        "pulseaudio" = {
          "scroll-step" = 1;
          "format" = "{volume}% {icon}";
	  "format-bluetooth" = "{volume}% {icon}";
	  "format-muted" = "";
          "format-icons" = {
            "headphone" = "";
	    "default" = ["" "" ""];
          };
          "on-click" = "pavucontrol";
        };

	"network" = {
          "format" = "{ifname}";
          "format-wifi" = "";
          "format-ethernet" = "󰈀";
          "format-disconnected" = "󰖪";
          "tooltip-format" = "{ifname}";
          "tooltip-format-wifi" = "{essid} ({signalStrength}%) 󰖩";
          "tooltip-format-ethernet" = "{ifname} 󰈀";
          "tooltip-format-disconnected" = "Disconnected 󰖪";
          "max-length" = 50;
        };

	"hyprland/workspaces" = {
          "format" = "{icon} {windows}";
          "format-window-separator" = " ";
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
          "format" = "{}";
	  "icon" = false;
          "rewrite" = {
            "(.*) — Mozilla Firefox" = "Firefox";
	    "Mozilla Firefox" = "Firefox";
	    "(.*) Discord (.*)" = "Discord";
	    "(.*) Obsidian (.*)" = "Obsidian";
	    "vesktop" = "Discord";
	    "tmux" = "WezTerm";
	    "zsh" = "WezTerm";
          };
          "separate-outputs" = true;
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

	/*.module {
	  color: #d8dee9;
	  background-color: #81a1c1;
          padding-left: 10px; 
	  padding-right: 10px;
          margin-top: 5px; 
	  margin-bottom: 5px;
	  border-radius: 6px;
        }*/

        .modules-left>widget:first-child .module {
          margin-left: 0px;
        }

        .modules-right>widget:last-child .module {
          margin-right: 0px;
        }

        #clock, #battery, #cpu, #memory, 
	#temperature, #pulseaudio, #network,
	#window {
          color: #88c0d0;
	  background-color: #3b4252;
          padding-left: 10px;
	  padding-right: 10px;
          margin-top: 0px; 
	  margin-bottom: 0px;
	  border: 2px solid #88c0d0;
	  border-radius: 6px;
	}

	#workspaces {
	  background-color: #81a1c1;
	  padding-right: 5px;
	  margin-top: 0px;
	  margin-bottom: 0px;
	  border-radius: 6px;
	}
    ''; 
  };
}
