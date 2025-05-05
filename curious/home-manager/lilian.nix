{
  config,
  pkgs,
  ...
}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  home.username = "lilian";
  home.homeDirectory = "/home/lilian";

  home.packages = [
    pkgs.zsh
    pkgs.jetbrains.pycharm-professional
    pkgs.discord
    pkgs.lutris
    pkgs.protonup
    pkgs.kate
    pkgs.google-chrome
  ];
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = [
      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
    ];
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "23.11";
}
