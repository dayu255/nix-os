{
  description = "flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs }@inputs:{
    nixosConfigurations = {
      lollipop = nixpkgs.lib.nixosSystem {
	system = "x86_64-linux";
        modules = [
 	  ./configuration.nix
          ./hardware-configuration.nix
          ./modules/font.nix
        ];
      };
    };
 };
}
