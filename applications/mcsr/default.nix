{ pkgs, mcsr-nixos, ... }:
let
    mcsrPkgs = mcsr-nixos.packages.${pkgs.stdenv.hostPlatform.system};
in
{
    imports = [
        mcsr-nixos.nixosModules.waywall
        ./waywall
    ];

    environment.systemPackages = [
        mcsrPkgs.ninjabrain-bot

        (pkgs.prismlauncher.override {
            jdks = [ mcsrPkgs.graalvm-21 ];
        })
    ];
}
