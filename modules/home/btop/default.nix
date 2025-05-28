{ ... }:
{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "catppuccin_mocha";
    };
  };

  home.file.".config/btop/themes/catppuccin_mocha.theme".source = ./catppuccin_mocha.theme;

}
