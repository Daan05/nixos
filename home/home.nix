{...}: {
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

  programs.nixvim = {
    enable = true;

    colorschemes.onedark.enable = true;
    defaultEditor = true;

    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers

      shiftwidth = 2; # Tab width should be 2
    };

    plugins = {
      lualine.enable = true;
      treesitter.enable = true;
      nvim-tree.enable = true;
    };
  };

  home.stateVersion = "24.05";
}
