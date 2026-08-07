{config, ...}: let
  templates = "${config.home.homeDirectory}/.nixfiles/home/matugen/templates";
in {
  xdg.configFile = {
    "matugen/config.toml".text = ''
      [config]
      [templates.millennium]
      input_path = '${templates}/millennium.css'
      output_path = '~/.steam/steam/steamui/skins/Material-Theme/css/main/colors/matugen.css'

      [templates.prismlauncher]
      input_path = '${templates}/prismlauncher.json'
      output_path = '~/.local/share/PrismLauncher/themes/Matugen/theme.json'

      [templates.discord]
      input_path = '${templates}/discord.css'
      output_path = '~/.config/goofcord/themes/matugen.css'

      [templates.telegram]
      input_path = '${templates}/telegram.tdesktop-theme'
      output_path = '~/Documents/matugen.tdesktop-theme'
    '';
  };
}
