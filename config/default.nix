{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ];

  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 4;
  };

  colorschemes.catppuccin.enable = true;

  plugins = {
  	lualine = {
		enable = true;
		ignoreFocus = [
			"NvimTree"
		];
	};

	lsp = {
		enable = true;
		servers = {
			tsserver.enable = true;
			lua-ls.enable = true;
			rust-analyzer.enable = true;
		};
	};

	cmp-emoji.enable = true;
	cmp-nvim-lsp.enable = true;
	cmp-buffer.enable = true;
	cmp-path.enable = true;

	cmp = {
		enable = true;
		settings = {
			autoEnableSources = true;
			performance = {
				debounce = 60;
				fetchingTimeout = 200;
				maxViewEntries = 20;
			};
			sources = [
				{ name = "nvim_lsp"; }
				{
					name = "buffer";
					option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
					keywordLength = 3;
				}
				{
					name = "path";
					keywordLength = 3;
				}
			];

			mapping = {
				"<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
				"<S-Tab>" = "cmp.mapping.select_prev_item()";
				"<C-j>" = "cmp.mapping.select_next_item()";
				"<C-k>" = "cmp.mapping.select_prev_item()";
				"<C-e>" = "cmp.mapping.abort()";
				"<C-b>" = "cmp.mapping.scroll_docs(-4)";
				"<C-f>" = "cmp.mapping.scroll_docs(4)";
				"<C-Space>" = "cmp.mapping.complete()";
				"<CR>" = "cmp.mapping.confirm({ select = true })";
				"<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
			};
		};
	};

	conform-nvim = {
		enable = true;
		formatOnSave = {
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

	alpha = {
		enable = true;
		theme = "startify";
	};

	telescope.enable = true;
	nvim-colorizer.enable = true;

	illuminate = {
		enable = true;
		underCursor = false;
		filetypesDenylist = [
			"TelescopePrompt"
			"alpha"
		];
	};

	toggleterm = {
		enable = true;
		settings = {
			autochdir = false;
			hide_numbers = true;
			start_in_insert = true;
		};
	};

	nvim-tree = {
		enable = true;
	};
  };
}
