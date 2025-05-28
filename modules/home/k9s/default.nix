{ ... }:
{
  programs.k9s = {
    enable = true;
    skins = {
      catppuccin-mocha-transpaerent = ./catppuccin-mocha-transparent.yaml;
    };
    settings.k9s.ui.skin = "catppuccin-mocha-transparent";
  };
}
