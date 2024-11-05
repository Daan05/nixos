{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    globals.mapleader = " ";
    
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
