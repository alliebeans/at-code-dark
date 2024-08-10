{
  description = "Node development environment";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    packages.${system}.default = pkgs.nodejs_20;
    devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.nodejs_20 ];

    shellHook = ''
        echo "Starting a shell with node `${pkgs.nodejs_20}/bin/node --version`..."
    '';
    };
  };
}