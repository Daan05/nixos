{...}: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ''
            /*
       * __        __          _                  ____  _         _
       * \ \      / /_ _ _   _| |__   __ _ _ __  / ___|| |_ _   _| | ___
       *  \ \ /\ / / _` | | | | '_ \ / _` | '__| \___ \| __| | | | |/ _ \
       *   \ V  V / (_| | |_| | |_) | (_| | |     ___) | |_| |_| | |  __/
       *    \_/\_/ \__,_|\__, |_.__/ \__,_|_|    |____/ \__|\__, |_|\___|
       *                 |___/                              |___/
       *
       * by Stephan Raabe (2024)
       * -----------------------------------------------------
      */

      @define-color backgroundlight #FFFFFF;
      @define-color backgrounddark #FFFFFF;
      @define-color workspacesbackground1 #FFFFFF;
      @define-color workspacesbackground2 #CCCCCC;
      @define-color bordercolor #FFFFFF;
      @define-color textcolor1 #000000;
      @define-color textcolor2 #000000;
      @define-color textcolor3 #FFFFFF;
      @define-color iconcolor #FFFFFF;

      /* -----------------------------------------------------
       * General
       * ----------------------------------------------------- */

      * {
          /* font-family: "Fira Sans Semibold", FontAwesome, Roboto, Helvetica, Arial, sans-serif; */
          border: none;
          border-radius: 0px;
      }

      window#waybar {
          background-color: rgba(0,0,0,0.2);
          border-bottom: 0px solid #ffffff;
          /* color: #FFFFFF; */
          transition-property: background-color;
          transition-duration: .5s;
      }

      /* -----------------------------------------------------
       * Workspaces
       * ----------------------------------------------------- */

      #workspaces {
          margin: 5px 1px 6px 1px;
          padding: 0px 1px;
          border-radius: 15px;
          border: 0px;
          font-weight: bold;
          font-style: normal;
          font-size: 16px;
          color: @textcolor1;
      }

      #workspaces button {
          padding: 0px 5px;
          margin: 4px 3px;
          border-radius: 15px;
          border: 0px;
          color: @textcolor3;
          transition: all 0.3s ease-in-out;
      }

      #workspaces button.active {
          color: @textcolor1;
          background: @workspacesbackground2;
          border-radius: 15px;
          min-width: 40px;
          transition: all 0.3s ease-in-out;
      }

      #workspaces button:hover {
          color: @textcolor1;
          background: @workspacesbackground2;
          border-radius: 15px;
      }

      /* -----------------------------------------------------
       * Tooltips
       * ----------------------------------------------------- */

      tooltip {
          border-radius: 10px;
          background-color: @backgroundlight;
          opacity:0.8;
          padding:20px;
          margin:0px;
      }

      tooltip label {
          color: @textcolor2;
      }

      /* -----------------------------------------------------
       * Window
       * ----------------------------------------------------- */

      #window {
          background: @backgroundlight;
          margin: 10px 15px 10px 0px;
          padding: 2px 10px 0px 10px;
          border-radius: 12px;
          color:@textcolor2;
          font-size:16px;
          font-weight:normal;
      }

      window#waybar.empty #window {
          background-color:transparent;
      }

      /* -----------------------------------------------------
       * Taskbar
       * ----------------------------------------------------- */

      #taskbar {
          background: @backgroundlight;
          margin: 6px 15px 6px 0px;
          padding:0px;
          border-radius: 15px;
          font-weight: normal;
          font-style: normal;
          border: 3px solid @backgroundlight;
      }

      #taskbar button {
          margin:0;
          border-radius: 15px;
          padding: 0px 5px 0px 5px;
      }

      /* -----------------------------------------------------
       * Modules
       * ----------------------------------------------------- */

      .modules-left > widget:first-child > #workspaces {
          margin-left: 0;
      }

      .modules-right > widget:last-child > #workspaces {
          margin-right: 0;
      }

      /* -----------------------------------------------------
       * Custom Quicklinks
       * ----------------------------------------------------- */

      #backlight,
      #custom-browser,
      #custom-filemanager,
      #network,
      #pulseaudio,
      #battery,
      #custom-appmenu,
      #clock {
          margin-right: 20px;
          font-size: 20px;
          font-weight: bold;
          color: @iconcolor;
          padding: 4px 10px 2px 10px;
          font-size: 16px;
      }

      #custom-quicklink1,
      #custom-quicklink2,
      #custom-quicklink3,
      #custom-quicklink4,
      #custom-quicklink5,
      #custom-quicklink6,
      #custom-quicklink7,
      #custom-quicklink8,
      #custom-quicklink9,
      #custom-quicklink10 {
          padding:0px;
          margin-right: 7px;
          font-size:20px;
          color: @iconcolor;
      }

      /* -----------------------------------------------------
       * Custom Modules
       * ----------------------------------------------------- */

      #custom-appmenu {
          background-color: @backgrounddark;
          color: @textcolor1;
          border-radius: 15px;
          margin: 10px 10px 10px 10px;
      }

      /* -----------------------------------------------------
       * Custom Exit
       * ----------------------------------------------------- */

      #custom-exit {
          margin: 2px 20px 0px 0px;
          padding:0px;
          font-size:20px;
          color: @iconcolor;
      }

      /* -----------------------------------------------------
       * Hardware Group
       * ----------------------------------------------------- */

       #disk,#memory,#cpu,#language {
          margin:0px;
          padding:0px;
          font-size:16px;
          color:@iconcolor;
      }

      #language {
          margin-right:10px;
      }

      /* -----------------------------------------------------
       * Clock
       * ----------------------------------------------------- */

      #clock {
          background-color: @backgrounddark;
          font-size: 16px;
          color: @textcolor1;
          border-radius: 15px;
          margin: 10px 7px 10px 0px;
      }

      /* -----------------------------------------------------
       * Pulseaudio
       * ----------------------------------------------------- */

      #pulseaudio,
      #backlight {
          background-color: @backgroundlight;
          font-size: 16px;
          color: @textcolor2;
          border-radius: 15px;
          margin: 10px 10px 10px 0px;
      }

      #pulseaudio.muted {
          background-color: @backgrounddark;
          color: @textcolor1;
      }

      /* -----------------------------------------------------
       * Network
       * ----------------------------------------------------- */

      #network {
          background-color: @backgroundlight;
          font-size: 16px;
          color: @textcolor2;
          border-radius: 15px;
          margin: 10px 10px 10px 0px;
      }

      #network.ethernet {
          background-color: @backgroundlight;
          color: @textcolor2;
      }

      #network.wifi {
          background-color: @backgroundlight;
          color: @textcolor2;
      }

      /* -----------------------------------------------------
       * Bluetooth
       * ----------------------------------------------------- */

       #bluetooth, #bluetooth.on, #bluetooth.connected {
          background-color: @backgroundlight;
          font-size: 16px;
          color: @textcolor2;
          border-radius: 15px;
          margin: 10px 15px 10px 0px;
      }

      #bluetooth.off {
          background-color: transparent;
          padding: 0px;
          margin: 0px;
      }

      /* -----------------------------------------------------
       * Battery
       * ----------------------------------------------------- */

      #battery {
          background-color: @backgroundlight;
          font-size: 16px;
          color: @textcolor2;
          border-radius: 15px;
          margin: 10px 15px 10px 0px;
      }

      #battery.charging, #battery.plugged {
          color: @textcolor2;
          background-color: @backgroundlight;
      }

      @keyframes blink {
          to {
              background-color: @backgroundlight;
              color: @textcolor2;
          }
      }

      #battery.critical:not(.charging) {
          background-color: #f53c3c;
          color: @textcolor3;
          animation-name: blink;
          animation-duration: 0.5s;
          animation-timing-function: linear;
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }

      /* -----------------------------------------------------
       * Tray
       * ----------------------------------------------------- */

      #tray {
          margin:0px 10px 0px 0px;
      }

      #tray > .passive {
          -gtk-icon-effect: dim;
      }

      #tray > .needs-attention {
          -gtk-icon-effect: highlight;
          background-color: #eb4d4b;
      }

      /* -----------------------------------------------------
       * Other
       * ----------------------------------------------------- */

      label:focus {
          background-color: #000000;
      }

      #network {
          background-color: #2980b9;
      }

      #network.disconnected {
          background-color: #f53c3c;
      }

    '';

    settings = [
      {
        height = 30;
        layer = "top";
        position = "top";
        spacing = 4;

        modules-left = [
          "custom/appmenu"
          "hyprland/window"
        ];
        modules-center = [
          "hyprland/workspaces"
        ];
        modules-right = [
          "pulseaudio"
          "backlight"
          "network"
          "battery"
          "clock"
          "tray"
          "custom/exit"
        ];

        # Workspaces
        "hyprland/workspaces" = {
          on-click = "activate";
          active-only = false;
          all-outputs = true;
          format = "{}";
          format-icons = {
            urgent = "";
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = 1;
          };
        };

        # Hyprland Window
        "hyprland/window" = {
          rewrite = {
            "(.*) - Brave" = "$1";
            "(.*) - Chromium" = "$1";
            "(.*) - Brave Search" = "$1";
            "(.*) - Outlook" = "$1";
            "(.*) Microsoft Teams" = "$1";
          };
          separate-outputs = true;
        };

        # Rofi Application Launcher
        "custom/appmenu" = {
          format = "Apps";
          tooltip-format = "Left: Open the application launcher\nRight: Show all keybindings";
          on-click = "rofi -show drun -replace";
          # on-click-right = "~/.config/ml4w/scripts/keybindings.sh";
          tooltip = false;
        };

        # Power Menu
        "custom/exit" = {
          format = "⏻";
          tooltip-format = "Powermenu";
          on-click = "rofi -show power-menu -modi power-menu:rofi-power-menu";
          tooltip = false;
        };

        # Keyboard State
        keyboard-state = {
          numlock = true;
          capslock = true;
          format = "{name} {icon}";
          format-icons = {
            locked = "";
            unlocked = "";
          };
        };

        # System tray
        tray = {
          # "icon-size": 21,
          spacing = 10;
        };

        # Clock
        clock = {
          # "timezone": "America/New_York",
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format-alt = "{:%d-%m-%Y}";
        };

        # System
        "custom/system" = {
          format = "";
          tooltip = false;
        };

        # CPU
        cpu = {
          format = "/ C {usage}% ";
          on-click = "kitty -e htop";
        };

        # Memory
        memory = {
          format = "/ M {}% ";
          on-click = "kitty -e htop";
        };

        # Harddisc space used
        disk = {
          interval = 30;
          format = "D {percentage_used}% ";
          path = "/";
          on-click = "kitty -e htop";
        };

        "hyprland/language" = {
          format = "/ K {short}";
        };

        # Group Hardware
        "group/hardware" = {
          orientation = "inherit";
          drawer = {
            transition-duration = 300;
            children-class = "not-memory";
            transition-left-to-right = false;
          };
          modules = [
            "custom/system"
            "disk"
            "cpu"
            "memory"
            "hyprland/language"
          ];
        };

        # Network
        network = {
          format = "{ifname}";
          format-wifi = "   {signalStrength}%";
          format-ethernet = "  {ipaddr}";
          format-disconnected = "Not connected"; #An empty format will hide the module.
          tooltip-format = " {ifname} via {gwaddri}";
          tooltip-format-wifi = "   {essid} ({signalStrength}%)";
          tooltip-format-ethernet = "  {ifname} ({ipaddr}/{cidr})";
          tooltip-format-disconnected = "Disconnected";
          max-length = 50;
          on-click = "nm-connection-editor";
        };

        # Battery
        battery = {
          states = {
            good = 95;
            warning = 30;
            critical = 20;
          };
          format = "{icon}   {capacity}%";
          format-charging = "  {capacity}%";
          format-plugged = "  {capacity}%";
          format-alt = "{icon}  {time}";
          # "format-good": "", // An empty format will hide the module
          # "format-full": "",
          format-icons = [" " " " " " " " " "];
        };

        # Pulseaudio
        pulseaudio = {
          # "scroll-step": 1, // %, can be a float
          format = "{icon}  {volume}%";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = ["" " " " "];
          };
          on-click = "pwvucontrol";
        };

        # Bluetooth
        bluetooth = {
          format-disabled = "";
          format-off = "";
          interval = 30;
          on-click = "blueman-manager";
          format-no-controller = "";
        };

        # Backlight
        backlight = {
          format = "{icon}  {percent}%";
          device = "intel_backlight";
          format-icons = ["" ""];
        };

        # Other
        user = {
          format = "{user}";
          interval = 60;
          icon = false;
        };

        # Idle Inhibator
        idle_inhibitor = {
          format = "{icon}";
          tooltip = true;
          format-icons = {
            activated = "";
            deactivated = "";
          };
          on-click-right = "hyprlock";
        };
      }
    ];
  };
}
