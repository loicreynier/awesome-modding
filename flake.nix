{
  description = "Awesome Modding";

  outputs = {
    self,
    flake-utils,
    nixpkgs,
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          # Tools
          alejandra
          just
          inlyne
          glow

          # Lint
          nodePackages.markdown-link-check
          nodePackages.awesome-lint
          typos
        ];
      };
    });

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };
}
