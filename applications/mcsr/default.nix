{ pkgs, inputs, ... }:

let
  mcsrPkgs = inputs.mcsr-nixos.packages.${pkgs.stdenv.hostPlatform.system};
in
{
  imports = [
    inputs.mcsr-nixos.nixosModules.waywall
    ./waywall
  ];

  environment.systemPackages = [
    mcsrPkgs.ninjabrain-bot
  ];
}
