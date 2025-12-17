{
  programs.git = {
    enable = true;
    settings = {
      branch.autosetuprebase = "always";
      color.ui = true;
      core.askPass = "";
      init.defaultBranch = "main";
      github.user = "pyndys";
      user = {
        name = "pyndys";
        email = "mikumiku@beam"; # Place with your real email, Hatsune Miku the best btw
      };
    };
  };
}
