{ pkgs, ... }:
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
    local wezterm = require 'wezterm'
    local config = {
      font = wezterm.font("BlexMono Nerd Font Mono"),
      font_size = 22.0,
      color_scheme = "Catppuccin Mocha",
      hide_tab_bar_if_only_one_tab = true,
      window_decorations = "RESIZE",

      keys = {
        key = 'Home',
        mods = ''',
        action = wezterm.action.SendString '\x1b[1~'
      },
      {
        key = 'End',
        mods = ''',
        action = wezterm.action.SendString '\x1b[4~'
      },
    }
    return config
    '';
  };
}
