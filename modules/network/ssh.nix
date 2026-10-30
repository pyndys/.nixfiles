{ config, ... }: {
  programs.ssh = {
    extraConfig = ''
      Host github.com
        user git
        identityFile ${config.age.secrets.github-ssh.path}
    '';
  };
}
