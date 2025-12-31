{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.pyndys = {
      extensions = with pkgs.vscode-extensions; [
        ## UI
        pkief.material-icon-theme

        ## Nix
        jnoortheen.nix-ide
        kamadorueda.alejandra

        ## Go
        golang.go

        ## Python
        charliermarsh.ruff
        ms-python.python
      ];
      userSettings = {
        ## UI
        "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace, 'Symbols Nerd Font Mono'";
        "workbench.iconTheme" = "material-icon-theme";
        "workbench.startupEditor" = "none";

        ## Git
        "git.confirmSync" = false;
        "git.enableSmartCommit" = true;
        "git.openRepositoryInParentFolders" = "always";

        ## Other settings
        "editor.formatOnSave" = true;
        "files.autoSave" = "on";
      };
    };
  };
}
