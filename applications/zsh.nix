{ pkgs, ... }:

{
  environment = {
    pathsToLink = [ "/share/zsh" ];
    systemPackages = [
      # pkgs.eza
      pkgs.fzf
    ];
  };
  programs.zsh = {
    enable = true;
    promptInit = "hyfetch";
  };
  users.users.metal.shell = pkgs.zsh;

  home-manager.users.metal = {
    programs = {
      # eza.enableZshIntegration = true;

      zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
        history = {
          size = 10000;
        };

        oh-my-zsh = {
          enable = true;
          plugins = [ "cp" ];
          theme = "agnoster";
        };

        shellAliases = {
          nv = "nvim";
          ".." = "cd ..";
        };

        # shellAliases = {
        #   ls = "eza --color=always --icons=always --group-directories-first -a";
        # };

        initContent = ''
          eval "$(fzf --zsh)"
        '';

        setOptions = [
            "NO_BEEP"
        ];
      };
    };
  };
}
