return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "vimdoc", "lua", "rust", "java" , "toml" },

				sync_install = false,

				auto_install = true,
				indent = {
					enable = true,
				},
				highlight = {
					enable = true,

					additional_vim_regex_highlighting = { " markdown" },
				},
			})
			local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		end,
	},
}
