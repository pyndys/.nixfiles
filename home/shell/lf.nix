{pkgs, ...}: {
  programs.lf = {
    enable = true;

    settings = {
      preview = true;
    };

    previewer = {
      source = "${pkgs.ctpv}/bin/ctpv";
    };

    extraConfig = ''
      set cleaner ${pkgs.ctpv}/bin/ctpvclear

      &${pkgs.ctpv}/bin/ctpv -s $id
      cmd on-quit %${pkgs.ctpv}/bin/ctpv -e $id
    '';
  };
}
