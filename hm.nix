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
            prismlauncher # configure
            pavucontrol
            yazi #configure
            tldr
            killall
            vscode
            spotify
            sway-contrib.grimshot
            libnotify
            lm_sensors
            osu-lazer-bin
            gparted
            obsidian
            hyfetch
            coreutils
            ffmpeg
            uv
            #python311
            nodejs
            pnpm
            audacity
            polkit_gnome
            p7zip
            zoom-us
            ncurses5
            gcc_multi
            openvpn
            proton-vpn
            qutebrowser
            signal-desktop
            waybar
            libqalculate
            typescript
            glfw3-minecraft
            jdk
            fzf
            qbittorrent
            discord
            # davinci-resolve
            musescore
            yt-dlp
            waywall
            nix-index
            libxkbcommon
            (callPackage ./nbb.nix {})
            audacious
            file
            satty
            slurp
            wayfreeze
            jq
            quartoMinimal
            chromium
            obs-studio-plugins.wlrobs
            gdb
            kdePackages.kdenlive
            xeyes
            grim
        ];
      };
    };
  };
}
