{ config, pkgs, ... }:

{
  imports =
    [
      ./browsers.nix
      ./git.nix
      ./shell
      ./terminal
    ];

}