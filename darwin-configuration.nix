{ config, pkgs, ... }:

let
  user = {
    username = "robharrop";
    name = "Rob Harrop";
    email = "rob.harrop@gmail.com";
  };
in
{
  imports = [
    (import ./base-configuration.nix {inherit pkgs config user;})
  ];
}
