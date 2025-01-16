local plugins = {
	-- "0xhoussam/fleet.nvim",
	{
		dir = "~/projects/fleet.nvim",
		dev = { true },
	},
	"HiPhish/rainbow-delimiters.nvim",
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("pride.config.treesitter")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("pride.config.lualine")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("pride.config.nvim-tree-lua")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("pride.config.auto-pairs")
		end,
	},
	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("pride.config.telescope")
		end,
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"akinsho/bufferline.nvim",
		event = "BufRead",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("pride.config.bufferline")
		end,
	},
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	event = "InsertEnter",
	-- 	dependencies = {
	-- 		"hrsh7th/cmp-buffer",
	-- 		"hrsh7th/cmp-path",
	-- 		"L3MON4D3/LuaSnip",
	-- 		"saadparwaiz1/cmp_luasnip",
	-- 		"rafamadriz/friendly-snippets",
	-- 		"onsails/lspkind.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("pride.config.nvim-cmp")
	-- 	end,
	-- },
	{
		"neovim/nvim-lspconfig",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		dependencies = {
			-- "hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
		config = function()
			require("pride.config.lspconfig")
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("pride.config.todo-comments")
		end,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("pride.config.conform")
		end,
	},
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("pride.config.lint")
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("pride.config.project")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "BufRead",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"utilyre/barbecue.nvim",
		event = "LspAttach",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		config = function()
			require("barbecue").setup()
		end,
	},
	{
		"famiu/bufdelete.nvim",
		config = function()
			require("bufdelete")
		end,
	},
	{
		"kevinhwang91/nvim-bqf",
		ft = "qf",
		config = function()
			require("bqf")
		end,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup()
		end,
	},
	{
		"wakatime/vim-wakatime",
	},
	{
		"chentoast/marks.nvim",
		event = "BufRead",
		config = function()
			require("marks").setup()
		end,
	},
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("pride.config.dashboard")
		end,
		dependencies = { "MunifTanjim/nui.nvim", "nvim-tree/nvim-web-devicons", "MaximilianLloyd/ascii.nvim" },
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame").setup({ enabled = false })
		end,
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("pride.config.markview")
		end,
	},
	{
		"jmbuhr/otter.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {},
		config = function()
			require("pride.config.otter")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("pride.config.text-objects")
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup()
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"RRethy/vim-illuminate",
		config = function()
			require("pride.config.illuminate")
		end,
	},
	{
		"saghen/blink.cmp",
		lazy = false,
		dependencies = "rafamadriz/friendly-snippets",
		version = "v0.*",
		opts = require("pride.config.blink"),
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy", -- Or `LspAttach`
		priority = 1000, -- needs to be loaded in first
		config = function()
			require("pride.config.tiny-inline-diagnostic")
		end,
	},

	{
		"stevearc/oil.nvim",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		config = function()
			require("pride.config.oil")
		end,
	},
	{
		"Goose97/timber.nvim",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("timber").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
}

require("lazy").setup(plugins, {})
