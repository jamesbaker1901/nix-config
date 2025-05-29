{ config, ... }: {
  programs = {
    zsh = {
      enable = true;
      shellAliases = {
        vim = "nvim";
        ls = "exa";
        ll = "exa -bghl";
        la = "exa -bghla";
        lt = "exa -T";
        cat = "bat";
        gp = "git push";
        ".." = "cd ..";
        "..." = "cd ../../";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";
        #switch = "sudo nixos-rebuild switch --flake /home/jay/git/nix-flake";
        garbage = "nix-collect-garbage -d";
        szsh = "source $HOME/.zshrc";

        kubectl = "kubecolor";
        k = "kubectl";
        kp = "kubectl get po";
        kns = "kubectl config set-context --current --namespace ";
        kd = "kubectl describe";
        gci = "aws sts get-caller-identity";
        gpmr = "git push -o merge_request.create --set-upstream origin $(git symbolic-ref --short HEAD)";
      };

      envExtra = ''
        PATH=$HOME/bin:$HOME/.cargo/bin:$HOME/.npm-global/bin:$PATH
        source $HOME/git/context/src/context.sh
      '';

      sessionVariables = {
        EDITOR = "nvim";
      };

      syntaxHighlighting.enable = true;

      history = {
        path = "${config.xdg.dataHome}/zsh/zsh_history";
        size = 10000;
        extended = true;
        ignoreSpace = true;
        share = true;
      };
      enableCompletion = true;
    };

  fzf = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };

  zoxide = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };
}

