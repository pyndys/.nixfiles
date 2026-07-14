{pkgs, ...}: {
  programs.prismlauncher = {
    enable = true;
    package = pkgs.prismlauncher.override {
      additionalLibs = [pkgs.glfw3-minecraft];
    };
    settings = {
      AutomaticJavaDownload = false;
      AutomaticJavaSwitch = true;
      MaxMemAlloc = 6144;
      UseNativeGLFW = true;
      UseNativeOpenAL = true;
      Env = "{\\\"__GL_THREADED_OPTIMIZATIONS\\\":\\\"0\\\"}";
    };
  };
}
