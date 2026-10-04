{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.zen-browser.homeModules.beta
  ];
  programs.zen-browser = {
    enable = true;

    policies = {
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      PasswordManagerEnabled = false; # I use bitwarden
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
    };

    profiles.default = {
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        bitwarden
        clearurls
        darkreader
        localcdn
        sponsorblock
        ublock-origin
      ];

      mods = [
        "a6335949-4465-4b71-926c-4a52d34bc9c0" # Better Find Bar
        "906c6915-5677-48ff-9bfc-096a02a72379" # Floating Status Bar
      ];

      settings = {
        "network.trr.mode" = 2;
        "zen.view.compact.enable-at-startup" = true;
        "zen.tabs.vertical.right-side" = true;
        "zen.welcome-screen.seen" = true;
      };
    };
  };
}
