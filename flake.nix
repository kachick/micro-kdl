{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs =
    { self, nixpkgs }:
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
        in
        {
          default =
            with pkgs;
            mkShellNoCC {
              buildInputs = [
                bashInteractive
                git
                coreutils # mkdir, cp, rm
                findutils # xargs
                nixfmt-rfc-style
                nil
                go-task

                dprint
                typos

                micro
                lua
                stylua

                # Using oneshot plugin is easy than vim (AFAIK). And having kdl plugin by default
                helix

                zellij
              ];
            };
        }
      );
    };
}
