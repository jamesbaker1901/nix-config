{ pkgs, ... }:
{
  home.packages = with pkgs; [
    omnix

    # Unix tools
    toybox
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
    alacritty
    kitty

    # nix
    cachix
    nil 
    nix-info
    nixpkgs-fmt

    # sre
    argocd
    istioctl
    kubectl
    kubecolor
    kubernetes-helm
    kustomize
    awscli2
    ssm-session-manager-plugin
    google-cloud-sdk
    cloudflare-cli
    stern
    gh
    openbao
    pass

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
