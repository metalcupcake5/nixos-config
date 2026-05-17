{ ... }:

{
    programs.regreet = {
        enable = true;
        settings = {
            application_prefer_dark_theme = true;
            greeting_msg = "meow :3";
        };
    };
}
