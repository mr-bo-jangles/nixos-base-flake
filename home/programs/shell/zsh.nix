{ config, pkgs, ... }:

{
  imports =
    [
    ];
  # basic configuration of git, please change to your own
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here

    enableVteIntegration = true;

    oh-my-zsh = {
      enable = true;
    };
  };
}