{...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "/etc/nixos/home/hypr/backgrounds/bg.png"
      ];

      wallpaper = [
        " , /etc/nixos/home/hypr/backgrounds/bg.png"
      ];
    };
  };
}
