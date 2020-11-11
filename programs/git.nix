{ pkgs, user, ... }:

let git = pkgs.git;
in {
  programs.git = {
    enable = true;
    package = git;
    userEmail = user.email;
    userName = user.name;
  };

  programs.zsh.shellAliases = {
    "g" = "${git}/bin/git";
    "ga" = "g add";
    "gc" = "g commit";
    "gco" = "g checkout";
    "gcm" = "g checkout master";
    "gst" = "g status";
    "gl" = "g pull";
    "gp" = "g push";
    "gpb" = "g push -u origin `git rev-parse --abbrev-ref HEAD`";
  };
}
