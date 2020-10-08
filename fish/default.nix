{ pkgs, writeTextFile, runCommand, symlinkJoin, makeWrapper }:
let
  fish = pkgs.fish;
  fenv = pkgs.fish-foreign-env;
  starship = pkgs.starship;

  aliasConfig = writeTextFile {
    name = "aliases.fish";
    executable = true;
    destination = "/etc/fish/conf.d/aliases.fish";
    text = builtins.readFile ./aliases.fish;
  };

  fishConfig = writeTextFile {
    name = "setup.fish";
    executable = true;
    destination = "/etc/fish/conf.d/setup.fish";
    text = ''
    set fish_function_path ${fenv}/share/fish-foreign-env/functions $fish_function_path
    fenv source ~/.nix-profile/etc/profile.d/nix.sh
    ${starship}/bin/starship init fish | source
    '';
  };
in
  [fish fenv fishConfig aliasConfig starship]
