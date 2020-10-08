with import <nixpkgs> {};

let
    setup = 
    [
        fish
        tmux

        pkgs.curl
        pkgs.direnv
        pkgs.htop
        pkgs.jq
        pkgs.less
        pkgs.cacert
        pkgs.nix
        pkgs.pstree
    ];

    fish = callPackage ./fish {};
    tmux = callPackage ./tmux {};
in
    setup