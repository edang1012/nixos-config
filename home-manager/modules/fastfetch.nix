{
  programs.fastfetch = {
    enable = true;
    settings = {
      modules = [
        "title"
        "separator"
        {
          type = "os";
          format = "{3}";
        }
        {
          type = "host";
          format = "{2}";
        }
        "kernel"
        "uptime"
        "packages"
        "shell"
        "wm"
        "terminal"
        {
          type = "cpu";
          format = "{1}({5}) @ {7}";
        }
        {
          type =  "gpu";
          format = "{1} {2}";
        }
        "memory"
        "swap"
        {
          type = "disk";
          format = "{1} / {2} ({3})";
        }
        "locale"
        "break"
        "colors"
      ];
    };
  };
}
