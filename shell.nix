# Development shell for Nix users.
{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
    buildInputs = with pkgs; [
        nodejs_22
        nodePackages.corepack
        docker
    ];

    shellHook = ''
        corepack enable
        corepack prepare pnpm@10.7.0 --activate
    '';
}
