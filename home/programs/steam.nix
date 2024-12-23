{ config, pkgs, environment, ... }:

{
  imports =
    [
    ];

  # starship - an customizable prompt for any shell
  programs.steam = {
    enable = true;
    # custom settings
    extraCompatPackages = with pkgs; [ proton-ge-bin ];
  };

  home.packages = with pkgs; [
    protonup-qt
  ];


}