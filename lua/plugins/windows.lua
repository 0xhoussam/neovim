return {
	"anuvyklack/windows.nvim",
	dependencies = { "anuvyklack/middleclass", "anuvyklack/animation.nvim" },
	config = function()
		vim.o.winwidth = 50
		vim.o.winminwidth = 50
		vim.o.equalalways = false
		require("windows").setup()
	end,
}
