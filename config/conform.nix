{
    plugins.conform-nvim = {
		enable = true;
		settings = {
			format_on_save = {
				lspFallback = true;
				timeoutMs = 500;
			};
			notifyOnError = true;
			formattersByFt = {
				html = [
					[
						"prettierd"
						"prettier"
					]
				];
				css = [
					[
						"prettierd"
						"prettier"
					]
				];
				javascript = [
					[
						"prettierd"
						"prettier"
					]
				];
				typescript = [
					[
						"prettierd"
						"prettier"
					]
				];
				lua = [ "stylua" ];
				nix = [ "nixfmt" ];
				rust = [ "rustfmt" ];
			};
		};
    };
}
