{ pkgs, user, ... }:

let
  paths = [
    ./zsh/aliases.zsh
  ];

  initExtra = 
    builtins.foldl' (out: path: out + "\n" + builtins.readFile path) ""
    paths;
in
{
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    enableNixDirenvIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zsh = {
    enable = true;
    initExtra = initExtra;
  };
}