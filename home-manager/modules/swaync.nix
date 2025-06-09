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
            control-center-height = 1075;

            # Notification Settings
            notification-icon-size = 64;
            notification-window-width = 360;
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
                mpris = {
                    image-size = 100;
                    image-radius = 8;
                    blur = false;
                };
                volume = {
                    label = "";
                    expand-button-label = "";
                    collapse-button-label = "";
                    show-per-app = true;
                };
                buttons-grid = {
                    actions = [
                        {
                            label = "󰻃";
                            command = "obs";
                        }
                        {
                            label = "󰹑";
                            command = "hyprshot -m output --clipboard-only";
                        }
                        {
                            label = "󱣴";
                            command = "hyprshot -m window --clipboard-only";
                        }
                        {
                            label = "󱣵";
                            command = "hyprshot -m region --clipboard-only";
                        }
                        {
                            label = "󰴱";
                            command = "hyprpicker";
                        }
                        {
                            label = "";
                            command = "hyprlock";
                        }
                        {
                            label = "󰤄";
                            command = "systemctl suspend";
                        }
                        {
                            label = "󰍃";
                            command = "hyprctl dispatch exit";
                        }
                        {
                            label = "";
                            command = "systemctl reboot";
                        }
                        {
                            label = "⏻";
                            command = "systemctl poweroff";
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
                border: 1px solid #88c0d0;
                border-radius: 10px;
                margin-top: 2px;
                margin-right: -4px;
                padding: 0px;
            }

            .notification-default-action:hover {
                background: #434c5e;
                border-radius: 10px;
            }

            .notification .notification-default-action .notification-content .image {
                border-radius: 8px;
            }

            .notification .notification-default-action .notification-content .text-box .summary {
                color: #d8dee9;
                font-size: 16px;
                margin-top: -1px;
                margin-left: 5px;
            }
            
            .notification .notification-default-action .notification-content .text-box .body {
                color: #d8dee9;
                margin-left: 5px;
            }

            .notification .notification-default-action .notification-content .text-box .time {
                color: #d8dee9;
                margin-right: 35px;
            } 

            .close-button {
                color: #d8dee9;
                background: #3b4252;
                border-radius: 8px;
                outline: none;
            }

            .close-button:hover {
                background: #bf616a; 
            }

            /* Control Center */
            .control-center {
                background: #3b4252;
                border: 1px solid #88c0d0;
                border-radius: 10px;
                box-shadow: none;
            }
            
            .control-center .notification-row {
                margin: 0px;
                padding: 0px;
                outline: none;
            }
            .control-center .notification {
                margin: 0px 0px -5px 0px;
                outline: none;
            }

            .control-center .notification-group {
                background: #2e3440;
                border-radius: 10px;
                margin: 10px 10px 0px 10px;
                padding: 7px 2px 12px 2px;
                outline: none;
            }

            .control-center .notification-group .notification-group-headers .notification-group-icon,
            .control-center .notification-group .notification-group-headers .notification-group-header {
                color: #d8dee9;
            }

            .control-center .notification-group .notification-group-close-button .close-button {
                color: #88c0d0;
                background: none;
                outline: none;
            }

            /* Widgets */
            .widget-title {
                color: #d8dee9;
                background: #2e3440;
                border-radius: 10px;
                padding: 5px 5px 5px 15px;
                margin: 10px 10px -10px 10px;
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
                background: #3b4252;
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
                background: #3b4252;
                border: none;
                border-radius: 10px;
                margin-left: 10px;
                outline: none;
            }

            .widget-volume trough highlight {
                background: #88c0d0;
                border: none;
                border-radius: 10px;
                padding: 5px;
                box-shadow: none;
                outline: none;
            }

            .widget-volume trough slider {
                background: none;
                border: none;
                outline: none;
            }

            .widget-volume trough:hover,
            .widget-volume trough highlight:hover, 
            .widget-volume trough slider:hover{
                border: none;
                outline: none;
            }

            .widget-volume button {
                color: #d8dee9;
                background: #3b4252;
                border: none;
                border-radius: 8px;
                padding: 2px 12px 2px 6px;
                margin: 5px 5px 5px 2px;
                box-shadow: none;
                outline: none;
            } 

            .widget-volume button:hover {
                color: #3b4252;
                background: #88c0d0;
                border: none;
                outline: none;
            } 

            .widget-volume button label {
                text-shadow: none;
                font-size: 14px;
                outline: none;
            }

            .per-app-volume {
                color: #d8dee9;
                padding: 0px;
                margin: 0px;
                outline: none;
            }

            .widget-mpris {
                background: #2e3440;
                border-radius: 10px;
                padding: 0px;
                margin: 0px 10px -40px 10px;
            }

            .widget-mpris-player {
                background: none;
                padding: 10px;
                margin: 10px;
            }

            .widget-mpris-title, 
            .widget-mpris-subtitle {
                color: #d8dee9;
            }

            .widget-mpris button {
                color: #d8dee9;
                border-radius: 8px;
                outline: none;
            }

            .widget-mpris>box,
            .widget-mpris>box>button {
                color: #d8dee9;
                background: none;
                border: none;
                text-shadow: none;
                box-shadow: none;
                outline: none;
            }

            .widget-mpris>box>button:hover {
                color: #3b4252;
                background: #88c0d0;
                border:none;
                text-shadow: none;
                box-shadow: none;
                outline: none;
            }

            .widget-buttons-grid {
                background: #2e3440;
                border-radius: 10px;
                padding: 10px;
                margin: 0px 10px 10px 10px;
                outline: none;
            } 

            .widget-buttons-grid>flowbox>flowboxchild>button {
                color: #d8dee9;
                background: #3b4252;
                border: none;
                border-radius: 8px;
                padding: 5px 20px 5px 17px;
                margin: 2px;
                text-shadow: none;
                outline: none;
            }

            .widget-buttons-grid>flowbox>flowboxchild>button:hover,
            .widget-buttons-grid>flowbox>flowboxchild>button:checked {
                color: #3b4252;
                background: #88c0d0;
                outline: none;
            }

        '';
    };
}
