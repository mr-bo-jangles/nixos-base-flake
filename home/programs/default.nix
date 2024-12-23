{ config, pkgs, ... }:

{
  imports =
    [
      ./browsers.nix
      ./discord.nix
      ./git.nix
      ./prompt.nix
      ./spotify.nix
      ./shell
      ./terminal
    ];

}