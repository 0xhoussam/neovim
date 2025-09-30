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
	"zls",
	"nixd",
    "tinymist",
    "pyright"
})

vim.g.neovide_font_features = {"+ss01", "+ss07", "+ss11", "-calt", "+ss09", "+ss02", "+ss14"}
