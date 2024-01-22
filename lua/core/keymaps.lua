local augroup = vim.api.nvim_create_augroup
local thisismijanGroup = augroup('thisismijan', {})

local autocmd = vim.api.nvim_create_autocmd
local km = vim.keymap

km.set("i", "<C-c>", "<Esc>")

autocmd('LspAttach' , {
	group = thisismijanGroup,
	callback = function(e)
		local opts = { noremap = true, silent = true, buffer = e.buf }
		vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
		vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
		vim.keymap.set("n", "<leader>lws", function() vim.lsp.buf.workspace_symbol() end, opts)
		vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.open_float() end, opts)
		vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)
		vim.keymap.set("n", "<leader>lrr", function() vim.lsp.buf.references() end, opts)
		vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
		vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	end
})



