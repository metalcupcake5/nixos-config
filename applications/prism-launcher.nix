{ pkgs, inputs, ... }:

let
    mcsrPkgs = inputs.mcsr-nixos.packages.${pkgs.stdenv.hostPlatform.system};
in
{
    home-manager.users.metal.programs.prismlauncher = {
        enable = true;
        package = pkgs.prismlauncher.override {
            jdks = [
                pkgs.jdk8
                pkgs.jdk17
                mcsrPkgs.graalvm-21
                pkgs.jdk25
            ];
        };
        settings = {
            ApplicationTheme = "dark";
            CloseAfterLaunch = false;

            Language = "en_US";

            ShowGameTime = true;
            ShowGameTimeWithoutDays = false;
            ShowGlobalGameTime = true;

            UseNativeGLFW = true;
        };
    };
}
