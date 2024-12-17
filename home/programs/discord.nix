{ config, pkgs, ... }:

{
  # basic configuration of git, please change to your own
  home.packages = with pkgs; [
    discord
  ];
}