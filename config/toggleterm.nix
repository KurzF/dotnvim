{
    plugins.toggleterm = {
	enable = true;
	settings = {
	    autochdir = false;
	    hide_numbers = true;
	    start_in_insert = true;
	    persist_mode = false;
	};
    };

    keymaps = [
	{
	    mode = [ "n" ];
	    key = "<space><cr>";
	    action = "<cmd>ToggleTerm<cr>";
	}
	{
	    mode = [ "t" ];
	    key = "<esc>";
	    action = "<c-\\><c-n>";
	}
    ];
}
