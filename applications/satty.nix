{ ... }:

{
  home-manager.users.metal.programs.satty = {
    enable = true;
    settings = {
      general = {
        early-exit = true;
        initial-tool = "brush";
        brush-smooth-history-size = 5;
        actions-on-right-click = [
            "save-to-clipboard"
            "exit"
        ];
      };

      color-palette = {
        palette = [ "#ff0000" ];
      };
    };
  };
}
