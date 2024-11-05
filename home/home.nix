{inputs, ...}: {
  home.username = "dhval";
  home.homeDirectory = "/home/dhval";

  imports = [
    ./applications/firefox.nix
    ./applications/nixvim.nix

    ./hypr/hyprland.nix
    ./hypr/hyprlock.nix
    ./hypr/hyprpaper.nix
    ./hypr/waybar.nix
    ./themes/graphite.nix
  ];

  home.stateVersion = "24.05";
}
