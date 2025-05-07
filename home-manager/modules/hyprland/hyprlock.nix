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

      # Background
      background = [
        {
          path = "~/Pictures/wallpaper1.jpg";
          blur_passes = 2;
          blur_size = 4;
          color = "0xff4c566a";
        }
      ];

      # User Avatar
      image = [
        {
          path = "~/Pictures/wallpaper1.jpg";
          size = 120;
          border_color = "0xff81a1c1";
      
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
          outer_color = "0xff81a1c1";
          inner_color = "0xff81a1c1";
          font_family = "$font";
          font_color = "0xffeceff4";
          fade_on_empty = false;
          placeholder_text = "   Enter Password";
          hide_input = false;
          check_color = "0xff88c0d0";
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
