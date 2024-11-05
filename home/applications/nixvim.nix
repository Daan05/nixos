{inputs, ...} : {

  imports = [
    inputs.nixvim.homeManagerModules.nixvim 
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
}
