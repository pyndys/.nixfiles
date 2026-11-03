{ inputs, ... }: {
  imports = [ inputs.dux-plugin-registry.nixosModules.default ];
  programs.dux-shell = {
    enable = true;

    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    plugins = {
      dankKDEConnect.enable = true;
      calculator.enable = true;
      webSearch.enable = true;
    };
  };
}
