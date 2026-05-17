{ ... }:

{
    home-manager.users.metal.programs.vesktop = {
        enable = true;
        settings = {
            discordBranch = "stable";
            transparencyOption = "none";
            tray = true;
            minimizeToTray = true;
            autoStartMinimized = false;
            staticTitle = false;
            enableMenu = false;
            disableSmoothScroll = false;
            hardwareAcceleration = true;
            hardwareVideoAcceleration = true;
            arRPC = true;
            appBadge = true;
            enableTaskbarFlashing = false;
            disableMinSize = false;
            clickTrayToShowHide = false;
            customTitleBar = false;

            enableSplashScreen = true;
            splashColor = "rgb(239, 239, 241)";
            splashBackground = "rgb(18, 18, 20)";
            splashPixelated = true;

            spellCheckLanguages = [
                "en-US"
                "en"
            ];
        };
    };
}
