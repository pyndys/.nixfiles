{
  programs.gh = {
    enable = true;
    hosts."github.com".user = "pyndys";
    settings = {
      editor = "nvim";
      browser = "zen";
    };
  };
}
