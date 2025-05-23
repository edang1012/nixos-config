{
    programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 30;
                margin-top = 8;
                margin-left = 8;
                margin-right = 8;
                margin-bottom = 0;
                spacing = 5;

                modules-left = [
                    "custom/power"
                    "hyprland/workspaces"
                    "hyprland/window"
                    #"custom/media"
                ];
                modules-center = [
                    "clock"
                ];
                modules-right = [
                    "custom/media"
                    "cpu"
                    "memory"
                    #"temperature"
                    "bluetooth"
                    "network"
                    "pulseaudio"
                    "power-profiles-daemon"
                    "battery"
                    "custom/notification"
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
                            "months" = "<span color='#88c0d0'><b>{}</b></span>";
                            "days" = "<span color='#d8dee9'><b>{}</b></span>";
                            "weeks" = "<span color='#a3be8c'><b>W{}</b></span>";
                            "weekdays" = "<span color='#ebcb8b'><b>{}</b></span>";
                            "today" = "<span color='#bf616a'><b><u>{}</u></b></span>";
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
                    "format" = "<span size='large'>{icon}</span>  {capacity}%";
                    "format-full" = "{capacity}%  {icon}";
                    "format-charging" = "<span size='large'>󰂄</span>  {capacity}%";
                    "format-plugged" = "<span size='large'></span>  {capacity}%";
                    "format-alt" = "{time} {icon}";
                    "format-icons" = ["󰂎" "󰁻" "󰁾" "󰂀" "󰁹"];
                    "tooltip-format" = "Percentage: {capacity}%\n{timeTo}\nPower: {power}W\nCycles: {cycles}\nHealth: {health}%";
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
                        "default" = ["" "" ""];
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

                "bluetooth" = {
                    "format" = "󰂯";
                    "format-disabled" = "󰂲";
                    "format-connected" = " {num_connections} connected";
                    "tooltip-format" = "{controller_alias}\t{controller_address}";
                    "tooltip-format-connected" = "{controller_alias}\t{controller_address}\n\n{device_enumerate}";
                    "tooltip-format-enumerate-connected" = "{device_alias}\t{device_address}";
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
                        "class<obsidian>" = "󱞁";
                        "class<vesktop>" = "";
                        "class<org.wezfurlong.wezterm>" = "";
                    };
                };

                "hyprland/window" = {
                    "format" = "    {initialTitle}";
                    "icon" = false;
                    "rewrite" = {
                        "(.*) Obsidian (.*)" = "    Obsidian";
                        "(.*) Mozilla Firefox" = "    Firefox";
                        "(.*) Spotify Premium" = "    Spotify";
                        "(.*) vesktop" = "    Discord";
                        "(.*) wezterm" = "    WezTerm";
                        "(.*) Loading..." = "    Nautilus";
                        "    " = "    Desktop";
                    };
                    "separate-outputs" = true;
                    "tooltip" = true;
                    "tooltip-format" = "{class}";
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
                    "max-length" = 45;
                    "exec" = "playerctl -a metadata --format '{\"text\": \"{{markup_escape(title)}} - {{artist}}\", \"tooltip\": \"{{playerName}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
                    "on-click" = "playerctl play-pause";
                };

                "custom/power" = {
                    "format" = "";
                    "interval" = "once";
                    "tooltip" = false;
                    "on-click" = "anyrun";
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
                background: #3b4252;
                border: 2px solid #88c0d0;
                border-radius: 10px;
            }

            .modules-left>widget:first-child .module {
                margin-left: 5px;
            }

            .modules-right>widget:last-child .module {
                margin-right: 5px;
            }

            #custom-power {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 10px;
                padding-right: 10px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #window, #custom-media, #clock {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 10px;
                padding-right: 10px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #battery, #cpu, #memory {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 5px;
                padding-right: 5px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #temperature {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 5px;
                padding-right: 10px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #custom-notification {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 10px;
                padding-right: 13px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #bluetooth {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 10px;
                padding-right: 4px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #network, #pulseaudio, #power-profiles-daemon {
                color: #88c0d0;
                background-color: transparent;
                padding-left: 5px;
                padding-right: 8px;
                margin-top: 0px; 
                margin-bottom: 0px;
                border: transparent;
                border-radius: 10px;
            }

            #workspaces {
                color: #88c0d0;
                background-color: transparent;
                border: transparent;
                border-radius: 10px;
            }

            #workspaces button {
                color: #88c0d0;
            }

            #workspaces button.active {
                color: #3b4252;
                background-color: #88c0d0;
                border-radius: 10px;
            }

            #workspaces button:hover {
                color: #3b4252;
                background: #88c0d0;
                border-color: transparent;
                border-radius: 10px;
                box-shadow: none;
                text-shadow: none;
                transition: none;
            }

            #workspaces button:hover.active {
                color: #3b4252;
                background: #88c0d0;
                border-color: transparent;
                border-radius: 10px;
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
