{ config, pkgs, user, ... }:

{
  imports = [ <home-manager/nix-darwin> ];

  environment.systemPackages = [ pkgs.nodejs ];

  # Need ZSH in the global namespace otherwise
  # the configuration gets totally screwed up
  programs.zsh.enable = true;
  
  home-manager = {
    useUserPackages = true;
    users."${user.username}" = {
      
      imports = [
        ./programs/shell.nix
        ./programs/tmux.nix
        (import ./programs/git.nix {inherit pkgs user;})
      ];

      home.packages = [
        pkgs.ag
        pkgs.cacert
        pkgs.direnv
        pkgs.htop
        pkgs.jq
        pkgs.less
        pkgs.nix
        pkgs.pstree
      ];
    };
  };

  system.stateVersion = 4;
}
