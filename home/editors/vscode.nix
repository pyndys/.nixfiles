{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.pyndys = {
      extensions = with pkgs.vscode-extensions; [
        ## UI
        pkief.material-icon-theme

        ## Nix
        kamadorueda.alejandra
        jnoortheen.nix-ide

        ## Go
        golang.go

        ## Python
        ms-python.python
        charliermarsh.ruff
      ];
      userSettings = {
        ## UI
        "workbench.iconTheme" = "material-icon-theme";
        "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace, 'Symbols Nerd Font Mono'";
        "workbench.startupEditor" = "none";

        ## Git
        "git.openRepositoryInParentFolders" = "always";
        "git.confirmSync" = false;
        "git.enableSmartCommit" = true;

        ## Other settings
        "files.autoSave" = "on";
        "editor.formatOnSave" = true;
      };
    };
  };
}
