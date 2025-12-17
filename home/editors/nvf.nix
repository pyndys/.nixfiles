{
  programs.nvf = {
    enable = true;

    settings.vim = {
      lineNumberMode = "number";
      clipboard.enable = true;
      autopairs.nvim-autopairs.enable = true;
      git.gitsigns.enable = true;
      filetree.nvimTree.enable = true;
      statusline.lualine.enable = true;

      lsp = {
        enable = true;
        formatOnSave = true;
      };

      languages = {
        nix = {
          enable = true;
          extraDiagnostics.enable = true;
          format = {
            enable = true;
            type = ["alejandra"];
          };
        };

        python = {
          enable = true;
          format = {
            enable = true;
            type = ["ruff"];
          };
        };

        go.enable = true;

        markdown = {
          enable = true;
          extensions.markview-nvim.enable = true;
        };
      };
    };
  };
}
