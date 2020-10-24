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
}
