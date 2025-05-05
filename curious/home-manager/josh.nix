{
  config,
  pkgs,
  ...
}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  home.username = "josh";
  home.homeDirectory = "/home/josh";

  home.packages = [
    pkgs.zsh
    pkgs.jetbrains.pycharm-professional
    pkgs.discord
    pkgs.lutris
    pkgs.protonup
    pkgs.kdePackages.kate
  ];
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
  };
  programs.git = {
    enable = true;
    userName = "josh";
    userEmail = "giggaflop@gmail.com";
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
  #   home.stateVersion = "23.11";
}
