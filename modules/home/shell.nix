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
        kd = "kubectl describe";
        gci = "aws sts get-caller-identity";
        fp = "git push --set-upstream origin $(git symbolic-ref --short HEAD)";
        gpmr = "git push -o merge_request.create --set-upstream origin $(git symbolic-ref --short HEAD)";
        kns = "kubectl config set-context --current --namespace=$1";
      };

      envExtra = ''
        PATH=$HOME/bin:$HOME/.cargo/bin:$HOME/.npm-global/bin:$PATH
        source $HOME/git/context/src/context.sh
        source $HOME/git/kubetools/src/kubetools.sh
        export TERM=screen-256color
        bindkey "^[[H" beginning-of-line
        bindkey "^[[F" end-of-line
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
  };
}

