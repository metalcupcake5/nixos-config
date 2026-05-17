{ config, lib, pkgs, ... }:

{
  services.gvfs.enable = true;
  services.tumbler.enable = true; # thumbnail manager
  services.syncthing = {
    enable = true;
    user = "metal";
    group = "users";
    dataDir = "/home/metal";
  };
  services.xserver.videoDrivers = ["nvidia"];
  services.blueman.enable = true; # bluetooth

  # Enable the X11 windowing system.
  # services.xserver.enable = true;

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  #services.qbittorrent.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;
}
