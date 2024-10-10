{
  description = "Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, home-manager }: let
      darwinSystem = {user, arch ? "aarch64-darwin"}:
        nix-darwin.lib.darwinSystem {
          system = arch;
          modules = [
            ./darwin/darwin.nix
            home-manager.darwinModules.home-manager
            {
              _module.args = { inherit inputs; };
              home-manager = {
                users.${user} = import ./home-manager;
                useGlobalPkgs = true;
                useUserPackages = true;
              };
              users.users.${user}.home = "/Users/${user}";
              nix.settings.trusted-users = [ user ];
            }
            nix-homebrew.darwinModules.nix-homebrew
            {
             nix-homebrew = {
               enable = true;
               enableRosetta = true;
               user = "n214";
               autoMigrate = true;
              };
            }
          ];
      };
  in
  {
    ubuntuConfigurations = {
      "n214" = home-manager.lib.homeManagerConfiguration {
        #inherit pkgs;
        system = "x86_64-linux";
        modules = [
          ./home-manager
        ];
      };
    };
    darwinConfigurations = {
      "mbp" = darwinSystem {
        user = "n214";
        arch = "aarch64-darwin";
      };
    };
  };
}
