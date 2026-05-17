{ ... }:

{
    programs.waywall = {
        enable = true;
        config = {
            programs = [ mcsrPkgs.ninjabrain-bot ];
            files = {
                overlay = ./overlay.png;
            };

            source = ./waywall.lua;
        };
    };
}
