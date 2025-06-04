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
    clock-rs

    # nix
    cachix
    nil 
    nix-info
    nixpkgs-fmt

    # sre
    kubectl
    kubecolor
    kubernetes-helm
    kustomize
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
    imagemagick
  ];

  programs = {
    jq.enable = true;
  };
}
