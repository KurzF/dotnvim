{ pkgs, ...}:
{
	plugins.treesitter = {
		enable = true;
		grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
			bash
			css
			html
			json
			lua
			markdown
			nix
			rust
			scss
			toml
			typescript
			tsx
			vim
			vimdoc
			yaml
		];

		settings = {
			highlight.enable = true;
		};
	};

}
