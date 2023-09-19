return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
	},
	{
		"karb94/neoscroll.nvim",
		config = require("john.config.neoscroll"),
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = require("john.config.treesitter"),
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
		config = require("john.config.lsp"),
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = require("john.config.telescope"),
	},
	{
		"folke/trouble.nvim",
		config = require("john.config.trouble"),
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
		config = require("john.config.neotree"),
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
		config = require("john.config.hop"),
	},
	{
		"sbdchd/neoformat",
		config = require("john.config.neoformat"),
	},
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-treesitter/nvim-treesitter-context",
	"folke/zen-mode.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"nvim-tree/nvim-web-devicons",
	"preservim/nerdcommenter",
	{
		"nvim-lualine/lualine.nvim",
		config = require("john.config.lualine"),
	},
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = require("john.config.refactoring"),
	},
}
