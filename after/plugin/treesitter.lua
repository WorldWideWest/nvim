require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"c_sharp",
		"python",
		"go",
		"javascript",
		"typescript",
		"jsdoc",
		"dockerfile",
		"yaml",
		"bash",
	},

	sync_install = false,

	auto_install = true,

	indent = { enable = true },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
