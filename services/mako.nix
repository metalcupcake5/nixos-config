{ pkgs, ... }:

{
  home-manager.users.metal = {
    services.mako.enable = true;
    services.mako.settings = {
      default-timeout = 5000;
    };
  };
}
