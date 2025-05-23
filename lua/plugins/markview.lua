return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local presets = require("markview.presets")

		require("markview").setup({
			markdown = {
				checkboxes = presets.checkboxes.nerd,
				headings = presets.headings.simple,
			}
		})
	end,
}
