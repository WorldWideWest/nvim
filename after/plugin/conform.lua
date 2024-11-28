require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		cs = { "csharpier" },
		dart = { "dart_format" },
	},
	format_on_save = {
		timeout_ms = 5000,
		lsp_format = "fallback",
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
