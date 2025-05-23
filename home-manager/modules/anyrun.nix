{ inputs, pkgs, anyrun, ... }:
{
    programs.anyrun = {
        enable = true;
        config = {
            x = { fraction = 0.5; };
            y = { fraction = 0.3; };
            width = { fraction = 0.35; };
            hidePluginInfo = true;
            closeOnClick = true;
            plugins = [
                inputs.anyrun.packages.${pkgs.system}.applications
                inputs.anyrun.packages.${pkgs.system}.dictionary
                #inputs.anyrun.packages.${pkgs.system}.kidex
                inputs.anyrun.packages.${pkgs.system}.randr
                inputs.anyrun.packages.${pkgs.system}.rink
                #inputs.anyrun.packages.${pkgs.system}.shell
                #inputs.anyrun.packages.${pkgs.system}.stdin
                #inputs.anyrun.packages.${pkgs.system}.symbols
                inputs.anyrun.packages.${pkgs.system}.translate
                inputs.anyrun.packages.${pkgs.system}.websearch
            ];
        };
        extraCss = ''
            * {
                all: unset;
                font-family: "Noto Sans CJK JP";
                font-size: 18px;
                font-weight: bold;
            }

            #window {
                background: transparent;
            }

            box#main {
                border-radius: 10px;
                background-color: #3b4252;
                border: 2px solid #88c0d0;
            }

            entry#entry {
                color: #d8dee9;
                background: #2e3440;
                box-shadow: none;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
                margin: 10px;
                min-height: 40px;
                caret-color: #88c0d0;
            }

            list#main {
                color: #d8dee9;
                background-color: transparent;
                margin-left: 10px;
                margin-right: 10px;
            }

            #plugin {
                background-color: transparent;
                padding-bottom: 3px;
            }

            #match {
                padding: 4px 5px;    
            }

            #match:selected,
            #match:hover {
                background-color: #4c566a;
                color: #d8dee9;
                border-radius: 10px;
            }

            #match:selected label#info,
            #match:hover label#info {
                color: #3b4252;
            }

            #match:selected label#match-desc,
            #match:hover label#match-desc {
                color: #3b4252;
            }

            #match label#info {
                color: #d8dee9;
            }

            label#match-desc {
                color: #d8dee9;
            }

            label#plugin {
            }
        '';
    };
}
