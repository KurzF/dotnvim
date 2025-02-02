{
	# Import all your configuration modules here
	imports = [
		./alpha.nix
		./cmp.nix
		./colorizer.nix
		./conform.nix
		./dap.nix
		./lsp.nix
		./lualine.nix
		./toggleterm.nix
		./telescope.nix
		./tree.nix
		./treesitter.nix
	];

    globals.mapleader = "<space>";

	opts = {
	    number = true;
	    relativenumber = true;
	    expandtab = false;
	    tabstop = 4;
	    shiftwidth = 4;
	};

	colorschemes.catppuccin.enable = true;
}
