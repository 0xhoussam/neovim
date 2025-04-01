return {
	cmd = { "lua-language-server" },
	root_markers = { "init.lua", ".git" },
	filetypes = { "lua" },
	single_file_support = true,
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
		},
	},
}
