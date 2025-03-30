return {
	"akinsho/bufferline.nvim",
	event = "BufRead",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				indicator = {
					-- icon = "▎", -- this should be omitted if indicator style is not 'icon'
					style = "icon",
				},
				offsets = {
					{ filetype = "NvimTree", text = "Navigation" },
					{ filetype = "NeoTree", text = "Navigation" },
				},
				highlight = {
					tab = {
						bg = "#00ff00",
					},
				},
			},
		})
	end,
}
