{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];
  programs.nvf = {
    enable = true;

    settings.vim = {
      autopairs.nvim-autopairs.enable = true;
      git.gitsigns.enable = true;

      ## Colors from terminal
      theme = {
        enable = true;
        transparent = true;
      };
      options.termguicolors = false;

      filetree.nvimTree = {
        enable = true;
        openOnSetup = false;
        setupOpts = {
          git.enable = true;
          renderer = {
            highlight_git = true;
            highlight_opened_files = "all";
          };
        };
      };

      fzf-lua = {
        enable = true;
        profile = "skim";
        setupOpts.fzf_bin = "${pkgs.skim}/bin/sk";
      };

      statusline.lualine = {
        enable = true;
        theme = "16color";
        activeSection = {
          a = [''{ "mode" } ''];
          b = [''{ "filename" } ''];
          c = [''{ "diff" } ''];
          x = [''{ "filetype" } ''];
          y = [''{ "progress" } ''];
          z = [''{ "hostname" } ''];
        };
      };

      clipboard = {
        enable = true;
        providers.wl-copy = {
          enable = true;
          package = pkgs.wl-clipboard-rs;
        };
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

        bash.enable = true;

        markdown = {
          enable = true;
          extensions.markview-nvim.enable = true;
        };
      };
    };
  };
}
