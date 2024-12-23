{ config, pkgs, lib, ... }:

with lib;

{
  imports = []
  ++ (lib.optionals (config.shellChoice == "zsh") [./zsh.nix])
  ++ (lib.optionals (config.shellChoice == "bash") [./bash.nix]);

  options = {
    shellChoice = mkOption {
      type = enum;
      default = "zsh";
      example = "zsh";
      description = "Choice of shell you want this environment to use, (bash/zsh/etc..).";
    };
  };

}