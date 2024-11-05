{pkgs, ...}: {
  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };
  # home.pointerCursor = {
  #   gtk.enable = true;
  #   package = pkgs.bibata-cursors;
  #   name = "Bibata-Modern-Classic";
  #   size = 20;
  # };
  gtk = {
    enable = true;
    theme = {
      name = "Graphite-Dark";
      # Gruvbox-Dark gruvbox-dark
      package = pkgs.graphite-gtk-theme;
    };
    # theme = {
    #   name = "Nordic";
    #   # Gruvbox-Dark gruvbox-dark
    #   package = pkgs.nordic;
    # };
    #iconTheme = {
    #  name = "gruvbox-dark-icons";
    #  package = pkgs.gruvbox-dark-icons-gtk;
    #};
    # cursorTheme = {
    #   name = "Nordzy-cursors";
    #   package = pkgs.nordzy-cursor-theme;
    #   size = 32;
    # };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
