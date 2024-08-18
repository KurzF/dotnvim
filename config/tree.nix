{
    plugins.nvim-tree.enable = true;

    keymaps = [
	{
	    mode = [ "n" ];
	    key = "<space>t";
	    action = "<cmd>NvimTreeToggle<cr>";
	}
    ];
}
