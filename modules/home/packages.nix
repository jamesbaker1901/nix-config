{ pkgs, ... }:
{
  home.packages = with pkgs; [
    omnix

    # Unix tools
    ripgrep 
    fd
    tree
    gnumake
    less
    yq-go
    yazi
    neofetch
    eza
    tmux
    htop

    # nix
    cachix
    nil 
    nix-info
    nixpkgs-fmt

    # sre
    kubectl
    kubecolor
    awscli2
    stern
    gh

    # fonts
    font-awesome
    nerd-fonts.blex-mono

    # apps
    spotify
    ncspot
    firefox
  ];

  programs = {
    jq.enable = true;
  };
}
