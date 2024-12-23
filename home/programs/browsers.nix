{ config, pkgs, ... }:

{
  imports =
    [
    ];
    # basic configuration of git, please change to your own
  programs.firefox = {
    enable = true;

  };
}