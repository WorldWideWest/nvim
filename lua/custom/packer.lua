vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("gmr458/vscode_modern_theme.nvim")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })

	use({ "stevearc/conform.nvim" })

	use({ "nvim-lua/plenary.nvim" })
	use({ "ThePrimeagen/harpoon" })
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})
end)
