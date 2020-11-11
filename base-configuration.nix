{ config, pkgs, user, ... }:

{
  imports = [ <home-manager/nix-darwin> ];

  nixpkgs.config.allowUnfree = true;

  fonts.enableFontDir = true;
  fonts.fonts = [ pkgs.jetbrains-mono ];

  system.keyboard = {
    enableKeyMapping = true;

    # use caps lock as ctrl instead of YELLING
    remapCapsLockToControl = true;
  };

  system.defaults = {
    trackpad = {
      # drag with three fingers
      TrackpadThreeFingerDrag = true;
    };
    dock = {
      tilesize = 40;
      show-recents = false;
    };
  };

  system.defaults.dock.autohide = true;

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
        (import ./programs/git.nix { inherit pkgs user; })
      ];

      home.packages = [
        pkgs.ag
        pkgs.cacert
        pkgs.curl
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
