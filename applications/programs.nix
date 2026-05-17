{ config, lib, pkgs, ... }:

{
  programs.firefox.enable = true;

  #programs.waybar.enable = true;
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.git.enable = true;
  programs.steam.enable = true;

  # nix-ld for cloudflare package npm dependency
  # programs.nix-ld = {
  #   enable = true;
  #   libraries = with pkgs; [
  #       stdenv.cc.cc
  #       zlib
  #       fuse3
  #       icu
  #       nss
  #       openssl
  #       curl
  #       expat
  #   ];
  # };

  home-manager.users.metal.programs = {
    feh.enable = true;
    mpv.enable = true;
    htop.enable = true;
  };
}
