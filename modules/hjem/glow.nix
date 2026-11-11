{ pkgs, config, ... }: {
  packages = [ pkgs.glow ];
  xdg.config.files."glow/glow.yml".source = (pkgs.formats.yaml { }).generate "glow_config.yml" {
    style = "${config.xdg.config.directory}/glow/matugen.json";
    showLineNumbers = true;
  };
}
