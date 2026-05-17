{ ... }:

{
    home-manager.users.metal.programs.hyfetch = {
        enable = true;
        settings = {
            preset = "transgender";
            mode = "rgb";
            light_dark = "dark";
            lightness = 0.5;
            color_align.mode = "horizontal";
            backend = "neofetch";
        };
    };
}
