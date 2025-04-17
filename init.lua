require("config.lazy")
require("base")
require("keybindings")
require("command")

vim.lsp.enable({
	"clangd",
	"gopls",
	"rust-analyzer",
	"ts_ls",
	"lua_ls",
	"gleam",
})
