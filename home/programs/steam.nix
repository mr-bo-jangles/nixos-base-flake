{ config, pkgs, ... }:

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

  environment.systemPackages = with pkgs; [
    protonup-qt
  ];


}