{
    plugins.telescope = {
	enable = true;
    };

    keymaps = [
	{
	    mode = [ "n" ];
	    key = "<space>g";
	    action = "<cmd>Telescope live_grep<cr>";
	}
    ];
}
