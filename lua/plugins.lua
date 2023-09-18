return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
	},
	{
		"karb94/neoscroll.nvim",
		config = require("config.neoscroll"),
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = require("config.treesitter"),
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
		config = require("config.lsp"),
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = require("config.telescope"),
	},
	{
		"folke/trouble.nvim",
		config = require("config.trouble"),
	},
	{
		enabled = false,
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = require("config.neotree"),
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"phaazon/hop.nvim",
		branch = "v2",
		config = require("config.hop"),
	},
	{
		"sbdchd/neoformat",
		config = require("config.neoformat"),
	},
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-treesitter/nvim-treesitter-context",
	"folke/zen-mode.nvim",
	"jose-elias-alvarez/null-ls.nvim"
}
