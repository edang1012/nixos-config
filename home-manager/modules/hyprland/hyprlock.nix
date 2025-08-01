{
    programs.hyprlock = {
        enable = true;
        settings = {
            # Font
            "$font" = "Noto Sans CJK JP Regular";

            # General
            general = {
                disable_loading_bar = true;
                hide_cursor = true;
            };

            # Authentication
            auth = {
                "fingerprint:enabled" = true;
            };

            # Background
            background = [
                {
                    path = "~/Pictures/Wallpapers/wallpaper1.jpg";
                    blur_passes = 2;
                    blur_size = 4;
                    color = "0xff434c5e";
                }
            ];

            # User Avatar
            image = [
                {
                    path = "~/Pictures/Profile_pics/profile2.jpg";
                    size = 120;
                    border_color = "0xff88c0d0";

                    position = "0, 0";
                    halign = "center";
                    valign = "center";
                }
            ];

            label = [
                # Time
                {
                    text = "cmd[update:30000] echo \"$(date +\"%I:%M\")\"";
                    color = "0xffeceff4";
                    font_size = 120;
                    font_family = "$font";
                    position = "0, -200";
                    halign = "center";
                    valign = "top";
                }

                # Date
                {
                    text = "cmd[update:43200000] echo \"$(date +\"%A, %B %d\")\"";
                    color = "0xffeceff4";
                    font_size = 30;
                    font_family = "$font";
                    position = "0, -420";
                    halign = "center";
                    valign = "top";
                }
            ];

            # Input Field
            input-field = [
                {
                    size = "300, 60";
                    outline_thickness = 4;
                    dots_size = 0.2;
                    dots_spacing = 0.2;
                    dots_center = true;
                    outer_color = "0xff88c0d0";
                    inner_color = "0xff3b4252";
                    font_family = "$font";
                    font_color = "0xff88c0d0";
                    fade_on_empty = false;
                    placeholder_text = "   Enter Password or Scan Finger";
                    hide_input = false;
                    check_color = "0xff8fbcbb";
                    fail_color = "0xffbf616a";
                    fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
                    capslock_color = "0xffa3be8c";
                    position = "0, -150";
                    halign = "center";
                    valign = "center";
                }
            ];
        };
    };
}
