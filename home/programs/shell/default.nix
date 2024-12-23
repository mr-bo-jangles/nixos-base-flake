{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.programs.shell;
in {
  imports = [
      ./bash.nix
      ./zsh.nix
  ]
  ++ (lib.optionals (options.shellChoice == "zsh") [./zsh.nix])
  ++ (lib.optionals (options.shellChoice == "bash") [./bash.nix]);

  options = {
    shellChoice = mkOption {
      type = enum;
      default = "zsh";
      example = "zsh";
      description = "Choice of shell you want this environment to use, (bash/zsh/etc..).";
    };
  };

}