{
    description = "Xenosen's Nix Flake Config";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        nvf = {
            url = "github:notashelf/nvf";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        spicetify-nix = {
            url = "github:Gerg-L/spicetify-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, nvf, spicetify-nix, ... }@inputs: let 
        system = "x86_64-linux";
        homeStateVersion = "24.11";
        user = "xenosen";
        hosts = [
            { hostname = "nixos"; stateVersion = "24.11"; }  #default fallback
            { hostname = "NixBook"; stateVersion = "24.11"; }
            { hostname = "NixFramework"; stateVersion = "24.11"; }
        ];

        makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
            system = system;
            specialArgs = {
                inherit inputs stateVersion hostname user;
            };

            modules = [
                ./hosts/${hostname}/configuration.nix
            ];
        };
    in {
        nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
            configs // {
                "${host.hostname}" = makeSystem {
                    inherit (host) hostname stateVersion;
                };
            }) {} hosts;

        homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
            pkgs = import nixpkgs {
                inherit system;
                config.allowUnfree = true;
            };
            extraSpecialArgs = {
                inherit inputs homeStateVersion spicetify-nix user;
            };
            modules = [
                nvf.homeManagerModules.default
                ./home-manager/home.nix
            ];
        };
    };
}
