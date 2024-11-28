require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"omnisharp",
		"yamlls",
		"eslint",
		"sqlls",
		"ast_grep",
		"html",
		"jsonls",
		"harper_ls",
		"powershell_es",
		"bashls",
		"pyright",
	},
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,

		require("lspconfig").dartls.setup({}),
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"debugpy",
		"mypy",
		"pylint",
		"black",
		"isort",
		"csharpier",
	},
})
