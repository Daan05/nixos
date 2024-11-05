{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      # Monitor
      "monitor" = ",2560x1600@165,auto,1.0";

      # SUPER key
      "$mainMod" = "SUPER";

      # Execute your favorite apps at launch
      exec-once = [
        #"waybar"
        "hyprpaper"
        "dunst"
        "[workspace 1] kitty"
      ];

      windowrule = [
        "float, ^(qalculate-gtk)$"
      ];

      bind = [
        # Actions
        "$mainMod, Q, killactive" # Close current window
        "$mainMod, M, exit" # Exit Hyprland
        "$mainMod, ESCAPE, exec, hyprlock" # lock screen
        "$mainMod, C, exec, qalculate-gtk" # Open calculator
        "$mainMod, E, exec, kitty yazi" # Opens the filemanager
        "$mainMod, T, exec, kitty" # Open kitty
        " , F11, togglefloating" # Toggle between tiling and floating window
        "$mainMod, F, fullscreen" # Open the window in fullscreen
        "$mainMod, L, exec, rofi -show combi -modes combi -combi-modes \"window,drun,run\"" # Open rofi
        "$mainMod, P, pseudo" # dwindle
        "$mainMod, J, togglesplit," # dwindle
        "$mainMod, B, exec, firefox" # Opens the browser
        #"$mainMod SHIFT, B, exec, ~/.config/ml4w/scripts/reload-waybar.sh" # Reload Waybar
        #"$mainMod SHIFT, W, exec, ~/.config/ml4w/scripts/reload-hyprpaper.sh" # Reload hyprpaper after a changing the wallpaper

        # Take screenshot
        "$mainMod, PRINT, exec, hyprshot -m window -o $HOME/Pictures/Screenshots" # window
        ", PRINT, exec, hyprshot -m output -o $HOME/Pictures/Screenshots" # monitor
        "$shiftMod, PRINT, exec, hyprshot -m region -o $HOME/Pictures/Screenshots" # region

        # Move focus with mainMod + arrow keys
        "$mainMod, left, movefocus, l" # Move focus left
        "$mainMod, right, movefocus, r" # Move focus right
        "$mainMod, up, movefocus, u" # Move focus up
        "$mainMod, down, movefocus, d" # Move focus down

        "ALT, A, workspace, e-1"
        "ALT, D, workspace, e+1"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1" # Switch to workspace 1
        "$mainMod, 2, workspace, 2" # Switch to workspace 2
        "$mainMod, 3, workspace, 3" # Switch to workspace 3
        "$mainMod, 4, workspace, 4" # Switch to workspace 4
        "$mainMod, 5, workspace, 5" # Switch to workspace 5
        "$mainMod, 6, workspace, 6" # Switch to workspace 6
        "$mainMod, 7, workspace, 7" # Switch to workspace 7
        "$mainMod, 8, workspace, 8" # Switch to workspace 8
        "$mainMod, 9, workspace, 9" # Switch to workspace 9
        "$mainMod, 0, workspace, 10" # Switch to workspace 10

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1" #  Move window to workspace 1
        "$mainMod SHIFT, 2, movetoworkspace, 2" #  Move window to workspace 2
        "$mainMod SHIFT, 3, movetoworkspace, 3" #  Move window to workspace 3
        "$mainMod SHIFT, 4, movetoworkspace, 4" #  Move window to workspace 4
        "$mainMod SHIFT, 5, movetoworkspace, 5" #  Move window to workspace 5
        "$mainMod SHIFT, 6, movetoworkspace, 6" #  Move window to workspace 6
        "$mainMod SHIFT, 7, movetoworkspace, 7" #  Move window to workspace 7
        "$mainMod SHIFT, 8, movetoworkspace, 8" #  Move window to workspace 8
        "$mainMod SHIFT, 9, movetoworkspace, 9" #  Move window to workspace 9
        "$mainMod SHIFT, 0, movetoworkspace, 10" #  Move window to workspace 10

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1" # Scroll workspaces
        "$mainMod, mouse_up, workspace, e-1" # Scroll workspaces
      ];

      bindl = [
        " , switch:on:Lid Switch, exec, hyprlock"
        " , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ];

      binde = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        "ALT, Z, exec, brightnessctl s 5%-"
        "ALT, X, exec, brightnessctl s +5%"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      gestures = {
        "workspace_swipe" = true;
      };

      input = {
        "kb_layout" = "us";
        "kb_variant" = "";
        "kb_model" = "";
        "kb_options" = "";
        "kb_rules" = "";
        "follow_mouse" = 1;

        touchpad = {
          "natural_scroll" = true;
        };

        "sensitivity" = 0; # -1.0 - 1.0, 0 means no modification.
      };

      animations = {
        "enabled" = true;
        "bezier" = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      env = [
        # XDG Desktop Portal
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"

        # QT
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_QPA_PLATFORMTHEME,qt6ct"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"

        # GTK
        "GDK_SCALE,1"

        # Mozilla
        "MOZ_ENABLE_WAYLAND,1"

        # Set the cursor size for xcursor
        "XCURSOR_SIZE,24"

        # Disable appimage launcher by default
        "APPIMAGELAUNCHER_DISABLE,1"

        # OZONE
        "OZONE_PLATFORM,wayland"

        # For KVM virtual machines
        # env = WLR_NO_HARDWARE_CURSORS, 1
        # env = WLR_RENDERER_ALLOW_SOFTWARE, 1

        # NVIDIA https://wiki.hyprland.org/Nvidia/
        # env = LIBVA_DRIVER_NAME,nvidia
        # env = GBM_BACKEND,nvidia-drm
        # env = __GLX_VENDOR_LIBRARY_NAME,nvidia
        # env = __GL_VRR_ALLOWED,1
        # env = WLR_DRM_NO_ATOMIC,1
      ];

      decoration = {
        "rounding" = 0;
        blur = {
          "enabled" = true;
          "size" = 3;
          "passes" = 1;
        };
        "drop_shadow" = true;
        "shadow_range" = 4;
        "shadow_render_power" = 3;
        "col.shadow" = "rgba(1a1a1aee)";
      };

      general = {
        "gaps_in" = 5;
        "gaps_out" = 20;
        "border_size" = 2;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
        "layout" = "dwindle";
        "resize_on_border" = true;
      };

      dwindle = {
        "pseudotile" = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        "preserve_split" = true; # you probably want this
      };

      misc = {
        "disable_hyprland_logo" = false;
        "disable_splash_rendering" = true;
      };
    };
  };

  home.stateVersion = "24.05";
}
