{ lib, pkgs, ... }:

{
  home-manager.users.metal.programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    plugins = with pkgs.yaziPlugins; {
        smart-enter.package = smart-enter;
        yatline-catppuccin.package = yatline-catppuccin;

        full-border = {
            package = full-border;
            setup = true;
        };

        git = {
            package = git;
            setup = true;
        };

        yatline = {
            package = yatline;
            setup = true;
            settings = {
                theme = lib.mkLuaInline ''require("yatline-catppuccin"):setup("macchiato")'';
            };
        };
    };
    theme = {
        flavor = {
            dark = "catppuccin-mocha";
        };
    };
    keymap = {
        mgr.prepend_keymap = [
            {
                run = "plugin smart-enter";
                on = ["<Enter>"];
                desc = "Enter child directory or open file";
            }
        ];
    };
  };
}
