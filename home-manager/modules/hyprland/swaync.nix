{
    services.swaync = {
        enable = true;
        settings = {
            # General Settings
            positionX = "right";
            positionY = "top";
            layer = "overlay";
            image-visibility = "when-available";

            keyboard-shortcuts = true;
            hide-on-clear = true;
            hide-on-action = true;
            script-fail-notify = true;
            fit-to-screen = false;

            transition-time = 200;
            timeout = 3;
            timeout-low = 2;
            timeout-critical = 0;

            # Control Center Settings
            control-center-margin-top = 8;
            control-center-margin-bottom = 8;
            control-center-margin-right = 8;
            control-center-margin-left = 8;
            control-center-width = 400;
            control-center-height = 1070;

            # Notification Settings
            notification-icon-size = 64;
            notification-window-width = 350;
            notification-body-image-height = 100;
            notification-body-image-width = 200;

            widgets = [
                "dnd"
                "title"
                "notifications"
                "mpris"
                "volume"
                "buttons-grid"
            ];
            widget-config = {
                title = {
                    text = "Notifications";
                    clear-all-button = true;
                    button-text = "󰆴  Clear All";
                };
                dnd = {
                    text = "Do Not Disturb";
                };
                label = {
                    max-lines = 1;
                    text = "Notification Center";
                };
                #mpris = {
                #image-size = 96;
                #image-radius = 8;
                #};
                volume = {
                    label = "";
                    expand-button-label = "";
                    collapse-button-label = "";
                    show-per-app = true;
                };
                buttons-grid = {
                    actions = [
                        {
                            label = "⏻";
                            command = "systemctl poweroff";
                        }
                        {
                            label = "";
                            command = "systemctl reboot";
                        }
                        {
                            label = "";
                            command = "hyprlock";
                        }
                        {
                            label = "󰍃";
                            command = "hyprctl dispatch exit";
                        }
                        {
                            label = "󰤄";
                            command = "systemctl suspend";
                        }
                        {
                            label = "";
                            command = "swayosd-client --output-volume mute-toggle";
                        }
                        {
                            label = "";
                            command = "swayosd-client --input-volume mute-toggle";
                        }
                        {
                            label = "󰖩";
                            command = "$HOME/.local/bin/shved/rofi-menus/wifi-menu.sh";
                        }
                        {
                            label = "󰂯";
                            command = "blueman-manager";
                        }
                        {
                            label = "";
                            command = "obs";
                        }
                    ];
                };
            };
        };

        # CSS
        style = ''
            * {
                font-family: "Noto Sans CJK JP";
                font-weight: bold;
                font-size: 14px;
                box-shadow: none;
            }

            /* Notifications */
            .notification {
                background: #3b4252;
                border: 2px solid #88c0d0;
                border-radius: 10px;
                margin-top: 1px;
                margin-right: -4px;
                padding: 0px;
            }

            /* Control Center */
            .control-center {
                background: #3b4252;
                border: 2px solid #88c0d0;
                border-radius: 10px;
                box-shadow: none;
            }

            /* Widgets */
            .widget-title {
                color: #d8dee9;
                background: #2e3440;
                border-radius: 10px;
                padding: 5px 5px 5px 15px;
                margin: 10px 10px 0px 10px;
            }

            .widget-title>label {
                font-size: 18px;
            }

            .widget-title>button {
                background: #3b4252;
                border: none;
                border-radius: 8px;
                padding: 2px 10px 2px 10px;
                margin: 2px 2px 2px 2px;
            }

            .widget-title>button>label {
                font-size: 12px;
            }

            .widget-title>button:hover {
                background: #bf616a;
            }
            
            .widget-dnd {
                color: #d8dee9;
                background: #2e3440;
                border-radius: 10px;
                padding: 5px 5px 5px 15px;
                margin: 10px 10px 0px 10px;
            }

            .widget-dnd>switch {
                background: #3b4252;
                border: none;
                border-radius: 8px;
                margin: 2px 2px 2px 2px;
            }
            
            .widget-dnd>switch:checked {
                background: #88c0d0;
                border: none;
                border-radius: 8px;
                margin: 2px 2px 2px 2px;
            }

            .widget-dnd>switch slider {
                background: #88c0d0;
                border: none;
                border-radius: 8px;
                margin: 2px 2px 2px 2px;
            }

            .widget-dnd>switch slider:checked {
                background: #3d4252;
                border: none;
                border-radius: 8px;
                margin: 2px 2px 2px 2px;
            }

            .widget-volume {
                color: #d8dee9;
                background: #2e3440;
                border-radius: 10px;
                padding: 5px 5px 5px 15px;
                margin: 0px 10px 10px 10px;
            }

            .widget-volume trough {
                background: #3d4252;
                border: none;
                border-radius: 10px;
                margin-left: 10px;
            }

            .widget-volume trough:hover,
            .widget-volume trough highlight:hover, 
            .widget-volume trough slider:hover {
                border: none;
            }

            .widget-volume trough highlight {
                background: #88c0d0;
                border: none;
                border-radius: 10px;
                padding: 5px;
                box-shadow: none;
            }

            .widget-volume trough slider {
                background: none;
                border: none;
            }

            .widget-volume button {
                color: #d8dee9;
                background: #3d4252;
                border: none;
                border-radius: 8px;
                padding: 2px 12px 2px 6px;
                margin: 2px 2px 2px 2px;
            }

            .per-app-volume {
                color: #d8dee9;
            }

            .widget-volume button label {
                text-shadow: none;
                font-size: 14px;
            }

            .widget-buttons-grid {
                background: #2e3440;
                border-radius: 10px;
                padding: 10px;
                margin: 0px 10px 10px 10px;
            } 

            .widget-buttons-grid>flowbox>flowboxchild>button {
                color: #d8dee9;
                background: #3d4252;
                border: none;
                border-radius: 8px;
                padding: 5px 20px;
                margin: 2px;
                text-shadow: none;
            }

            .widget-buttons-grid>flowbox>flowboxchild>button:hover,
            .widget-buttons-grid>flowbox>flowboxchild>button:checked {
                color: #3d4252;
                background: #88c0d0;
            }

        '';
    };
}
