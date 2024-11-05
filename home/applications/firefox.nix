{inputs, ...}: {
  programs.firefox = {
    enable = true;

    policies = {
      DisableFirefoxAccounts = true;
      DisablePocket = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      OfferToSaveLoginsDefault = false;
      PasswordManagerEnabled = false;

      FirefoxHome = {
        Search = true;
        Pocket = false;
        Snippets = false;
        TopSites = true;
        Highlights = false;
      };
    };

    profiles.default = {
      settings = {
        "ui.key.menuAccessKeyFocuses" = false;
        "browser.newtabpage.activity-stream.showSponsored" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
        "signon.rememberSignons" = false;
        "layout.css.prefers-color-scheme.content-override" = 0;
      };

      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        bitwarden
        sponsorblock
        darkreader
      ];
    };
  };
}
