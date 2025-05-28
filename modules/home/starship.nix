{ ... }:
{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      command_timeout = 300;

      palette = "catppuccin_mocha";

      format =
        #"$directory$git_branch$git_status$line_break$character";
        "$directory$git_branch$git_status$aws$line_break$env_var$kubernetes$character";

      directory = {
        format = "[$path]($style)[$read_only]($read_only_style) ";
        truncate_to_repo = true;
        truncation_length = 8;
      };
      git_branch = {
        format = "[$symbol$branch]($style) ";
        symbol = "";
        style = "purple";
      };
      character = { vicmd_symbol = "[](bold green) "; };
      aws.region_aliases = {
        us-east-1 = "use1";
        us-west-2 = "usw2";
        eu-west-2 = "euw2";
      };
      #env_var = {
      #  variable = "VENV";
      #  format = "[$env_value]($style) ";
      #};
      kubernetes = {
        symbol = "󰠳";
        style = "green";
        disabled = false;
        format = "[$symbol $context $namespace]($style) ";
      };

      palettes.catppuccin_mocha ={
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
     };

    };
  };
}
