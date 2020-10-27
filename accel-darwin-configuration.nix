{ config, pkgs, ... }:

let
  user = {
    username = "rharrop";
    name = "Rob Harrop";
    email = "rharrop@accel.com";
  };
in
{
  imports = [
    (import ./base-configuration.nix {inherit pkgs config user;})
  ];

  environment.pathsToLink = ["/share"];
  
  services.postgresql = {
    enable = true;
    enableTCPIP = false;
    package = pkgs.postgresql_13;
    dataDir = "/Users/${user.username}/.postgresql";
  };
}
