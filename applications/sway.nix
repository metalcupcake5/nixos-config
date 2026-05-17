{ ... }:

{
    programs.sway = {
        enable = true;
        extraOptions = [ "--unsupported-gpu" ];
    };
}
