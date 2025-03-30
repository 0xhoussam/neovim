require("config.lazy")
require("base")
require("keybindings")

vim.lsp.enable({
	"clangd",
	"gopls",
	"rust-analyzer",
	"ts_ls",
	"lua_ls",
})
