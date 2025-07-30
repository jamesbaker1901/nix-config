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
        ".." = "cd ..";
        "..." = "cd ../../";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";
        garbage = "nix-collect-garbage -d";
        szsh = "source $HOME/.zshrc";

        kubectl = "kubecolor";
        k = "kubectl";
        kp = "kubectl get po";
        kd = "kubectl describe";
        kns = "kubectl config set-context --current --namespace=$1";

        gci = "aws sts get-caller-identity";

        ga = "git add .";
        gp = "git push --set-upstream origin $(git symbolic-ref --short HEAD)";
        gppr = "git push --set-upstream origin $(git symbolic-ref --short HEAD) && gh pr create --title $(git symbolic-ref --short HEAD)";
      };

      envExtra = ''
        PATH=$HOME/bin:$HOME/.cargo/bin:$HOME/.npm-global/bin:$PATH
        source $HOME/git/context/src/context.sh
        source $HOME/git/kubetools/src/kubetools.sh
        eval $(/opt/homebrew/bin/brew shellenv)
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

