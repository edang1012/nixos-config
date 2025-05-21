{
    nix.settings = {
        # Enable flakes
        experimental-features = [ "nix-command" "flakes" ];
        builders-use-substitutes = true;
        extra-substituters = [
            "https://anyrun.cachix.org"
        ];

        extra-trusted-public-keys = [
            "anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
        ];
    };
}
