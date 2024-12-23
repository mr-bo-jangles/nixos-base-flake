{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.shellChoice;
in {
  imports = [
      ./bash.nix
      ./zsh.nix
  ]
  ++ (lib.optionals (cfg == "zsh") [./zsh.nix])
  ++ (lib.optionals (cfg == "bash") [./bash.nix]);

  options = {
    shellChoice = mkOption {
      type = enum;
      default = "zsh";
      example = "zsh";
      description = "Choice of shell you want this environment to use, (bash/zsh/etc..).";
    };
  };

}