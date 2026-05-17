{ pkgs, inputs, ... }:

let
    mcsrPkgs = inputs.mcsr-nixos.packages.${pkgs.stdenv.hostPlatform.system};
in
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
