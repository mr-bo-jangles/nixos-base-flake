{ config, pkgs, ... }:

{
  imports =
    [
      ./browsers.nix
      ./discord.nix
      ./git.nix
      ./prompt.nix
      ./steam.nix
      ./shell
      ./terminal
    ];

}