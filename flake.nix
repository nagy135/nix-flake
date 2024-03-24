{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in
    {

      packages.${system} = {
        testPackage = pkgs.callPackage ./. { };
        default = self.packages.${system}.testPackage;
      };

    };
}
