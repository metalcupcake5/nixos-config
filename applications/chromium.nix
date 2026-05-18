{ ... }:

{
  programs.chromium.enable = true;

  home-manager.users.metal.programs.chromium = {
    enable = true;
    extensions = [
      {
        id = "cjpalhdlnbpafiamejdnhcphjbkeiagm";
      }
    ];
  };
}
