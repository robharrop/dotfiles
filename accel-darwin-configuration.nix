{ config, pkgs, ... }:

let
  user = {
    username = "rharrop";
    name = "Rob Harrop";
    email = "rharrop@accel.com";
  };

  ngrok = pkgs.ngrok;
in {
  imports = [ (import ./base-configuration.nix { inherit pkgs config user; }) ];

  environment.pathsToLink = [ "/share" ];

  services.postgresql = {
    enable = true;
    enableTCPIP = false;
    package = pkgs.postgresql_13;
    dataDir = "/Users/${user.username}/.postgresql";
  };

  home-manager.users."${user.username}" = {
    home.packages = [ ngrok ];
    programs.zsh.shellAliases = {
      "ng" =
        "${ngrok}/bin/ngrok http --hostname=rharrop-sorcery.eu.ngrok.io --region eu";
    };
  };
}
