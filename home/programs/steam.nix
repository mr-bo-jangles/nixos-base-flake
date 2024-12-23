{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    steam
    proton-ge
    protonup-qt
  ];


}