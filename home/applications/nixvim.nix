{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    globals.mapleader = " ";
    
    colorschemes.gruvbox.enable = true;
    defaultEditor = true;

    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers

      shiftwidth = 2; # Tab width should be 2
    };

    plugins = {
      conform-nvim.enable = true;
      lsp-format.enable = true;
      lsp = {
        enable = true;
        servers = {
          nixd = {
            settings.formatting.command = [
              "alejandra"
            ];
            enable = true;
            extraOptions = {
              nixos = {
                expr = "(builtins.getFlake \"/etc/nixos\").nixosConfigurations.nix-host.options";
              };
              home_manager = {
                expr = "(builtins.getFlake \"/etc/nixos\").homeConfigurations.nix-host.options";
              };
            };
          };
        };
      };
      lualine.enable = true;
      treesitter.enable = true;
      nvim-tree.enable = true;
      telescope.enable = true;
    };

    keymaps = [
      {
        action = "<cmd>NvimTreeToggle<CR>";
        key = "<leader>t";
        mode = "n";
        options = {
          desc = "Toggle Tree.";
        };
      }
      {
	action = "<cmd> Telescope find_files<CR>";
	key = "<leader>f";
	mode = "n";
	options = {
	  desc = "Find files using telescope";
	};
      }
    ];
  };
}
