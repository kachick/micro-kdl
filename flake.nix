{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    unstable-nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    {
      self,
      nixpkgs,
      unstable-nixpkgs,
    }:
    let
      inherit (nixpkgs) lib;
      forAllSystems = lib.genAttrs lib.systems.flakeExposed;
    in
    {
      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixfmt-rfc-style);
      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          unstables = unstable-nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShellNoCC {
            buildInputs =
              (with pkgs; [
                bashInteractive
                git
                coreutils # mkdir, cp, rm
                findutils # xargs
                nixfmt-rfc-style
                nil
                go-task

                typos

                micro
                lua
                stylua

                # Using oneshot plugin is easy than vim (AFAIK). And having kdl plugin by default
                helix

                zellij

                _7zz
                gh

                pngquant
              ])
              ++ [ unstables.dprint ];
          };
        }
      );
    };
}
