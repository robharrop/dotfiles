{ pkgs, user, ... }:

let
  paths = [ ];

  initExtra =
    builtins.foldl' (out: path: out + "\n" + builtins.readFile path) "" paths;

  exa = pkgs.exa;
in {
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
    shellAliases = {
      "ls" = "${exa}/bin/exa";
      "ll" = "ls -al";

      "prw" = "gh pr create -w";

      "be" = "bundle exec";
      "bi" = "bundle install";
      "bu" = "bundle update";

      "dc" = "docker-compose";
      "dcu" = "docker-compose up";
      "dcd" = "docker-compose down";
      "dcr" = "docker-compose run";

      "yi" = "yarn install";
    };
  };

  home.packages = [ exa ];
}
