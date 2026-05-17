{ ... }:

{
    home-manager.users.metal.programs.obsidian = {
        enable = true;
        defaultSettings.app = {
            pdfExportSettings = {
            downscalePercent = 100;
            landscape = false;
            margin = "0";
            pageSize = "Letter";
            };
            vimMode = true;
        };
        defaultSettings.appearance = {
            theme = "obsidian";
        };
        defaultSettings.corePlugins = {
            audio-recorder = false;
            backlink = true;
            bases = true;
            bookmarks = true;
            canvas = true;
            command-palette = true;
            daily-notes = false;
            editor-status = true;
            file-explorer = true;
            file-recovery = true;
            footnotes = false;
            global-search = true;
            graph = true;
            markdown-importer = false;
            note-composer = true;
            outgoing-link = true;
            outline = true;
            page-preview = true;
            properties = false;
            publish = false;
            random-note = false;
            slash-command = false;
            slides = false;
            switcher = true;
            sync = false;
            tag-pane = true;
            templates = true;
            webviewer = false;
            word-count = true;
            workspaces = false;
            zk-prefixer = false;
        };
    };
}
