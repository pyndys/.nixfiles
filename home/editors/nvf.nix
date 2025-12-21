{
  programs.nvf = {
    enable = true;

    settings.vim = {
      autopairs.nvim-autopairs.enable = true;
      git.gitsigns.enable = true;
      filetree.nvimTree.enable = true;
      statusline.lualine.enable = true;

      keymaps = [
        {
          key = "<leader>b";
          mode = "n";
          action = ":NvimTreeToggle<CR>";
        }
      ];

      clipboard = {
        enable = true;
        providers.wl-copy.enable = true;
      };

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
