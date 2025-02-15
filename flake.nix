{
  description = "Description for the project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv";
    nix2container.url = "github:nlewo/nix2container";
    nix2container.inputs.nixpkgs.follows = "nixpkgs";
    mk-shell-bin.url = "github:rrbutani/nix-mk-shell-bin";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.devenv.flakeModule
      ];
      systems = [ "x86_64-linux" "i686-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];

      perSystem = { config, self', inputs', pkgs, system, ... }: {
        # Per-system attributes can be defined here. The self' and inputs'
        # module parameters provide easy access to attributes of the same
        # system.

        # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
        packages.default = pkgs.hello;

        devenv.shells.default =
          let
            scripts = [
              [ "ui" "pnpx shadcn-svelte add" ]
              [ "nx" "pnpm nx" ]
            ];
          in
          {
            name = "my-project";

            # https://devenv.sh/reference/options/
            packages = [
              config.packages.default
            ] ++ (builtins.attrValues {
              inherit (pkgs.nodePackages)
                pnpm
                svelte-language-server
                prettier;
            }) ++ (builtins.attrValues {
              inherit (pkgs)
                netlify-cli;
              nodejs-18_x = (pkgs.nodejs-18_x.override { enableNpm = true; });
            });

            scripts = pkgs.lib.pipe scripts [
              (map (alias: {
                name = builtins.elemAt alias 0;
                value.exec = (builtins.elemAt alias 1) + " \"$@\"";
              }))
              pkgs.lib.listToAttrs
            ];
          };

      };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
