{ inputs, pkgs, ... }:

{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    # backupFileExtension = "bak";

    users.metal = {
      programs.home-manager.enable = true;
      home = {
        username = "metal";
        homeDirectory = "/home/metal";
        stateVersion = "25.11";
        packages = with pkgs; [
          neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
          wget
          dust
          wl-clipboard
          # mako # notification daemon
          rofi # convert to flake later
          pavucontrol
          tldr
          killall
          spotify
          libnotify
          lm_sensors
          osu-lazer-bin
          gparted
          coreutils
          ffmpeg
          #python311
          nodejs
          pnpm
          audacity
          p7zip
          ncurses5
          gcc_multi
          openvpn
          proton-vpn
          qutebrowser # configure?
          signal-desktop
          waybar
          typescript
          glfw3-minecraft
          qbittorrent
          # davinci-resolve
          musescore
          libxkbcommon
          audacious
          file
          slurp
          wayfreeze
          quartoMinimal
          obs-studio-plugins.wlrobs
          kdePackages.kdenlive
          xeyes
          slack
          kdePackages.filelight
        ];
      };
    };
  };
}
