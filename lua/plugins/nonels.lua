return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.google_java_format,
                    null_ls.builtins.diagnostics.checkstyle,

				},
			})
			vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
		end,
	},
}
