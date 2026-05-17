{ pkgs, ... }:

{
    home-manager.users.metal.programs.kitty = {
        enable = true;
        shellIntegration.enableZshIntegration = true;
        settings = {
            scrollback_lines = 10000;
            tab_bar_edge = "top";
            tab_bar_style = "fade";
            background_opacity = 0.7;
            notify_on_cmd_finish = "unfocused";
        };
    };
}
