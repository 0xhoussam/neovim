return {
	"f-person/git-blame.nvim",
	config = function()
		require("gitblame").setup({ enabled = false, delay = 1000 })
	end,
}
