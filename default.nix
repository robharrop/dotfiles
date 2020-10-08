with import <nixpkgs> {};

let
    setup = 
    [
        fish

        pkgs.curl
        pkgs.direnv
        pkgs.htop
        pkgs.jq
        pkgs.less
        pkgs.cacert
        pkgs.nix
        pkgs.starship
        pkgs.pstree
    ];

    fish = callPackage ./fish {};
in
    setup