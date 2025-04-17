return {
	cmd = { "clangd", "--background-index" },
	root_markers = { "compile_commands.json", "compile_flags.txt", "Makefile" },
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	settings = {
		clangd = {
			InlayHints = {
				Designators = true,
				Enabled = true,
				ParameterNames = true,
				DeducedTypes = true,
			},
			fallbackFlags = { "-std=c++20" },
		},
	},
}
