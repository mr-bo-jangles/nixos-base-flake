{ config, pkgs, ... }:

{
  imports =
    [
    ];
  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Josh Harwood";
    userEmail = "giggaflop@gmail.com";
  };
}