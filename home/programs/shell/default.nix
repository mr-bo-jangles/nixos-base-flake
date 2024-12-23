{ config, pkgs, lib, ... }:

with lib;

{

  options = {
    shellChoice = mkOption {
      type = enum ["zsh" "bash"];
      default = "zsh";
      example = "zsh";
      description = "Choice of shell you want this environment to use, (bash/zsh/etc..).";
    };
  };

  imports = [
  ]
  ++ (lib.optionals (config.shellChoice == "zsh") [./zsh.nix])
  ++ (lib.optionals (config.shellChoice == "bash") [./bash.nix]);

}