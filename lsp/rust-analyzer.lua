return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml" },
	capabilities = {
		experimental = {
			serverStatusNotification = true,
		},
	},
	settings = {
		["rust-analyzer"] = {
			inlayHints = {
				bindingModeHints = {
					enable = false,
				},
				chainingHints = {
					enable = true,
				},
				closingBraceHints = {
					enable = true,
					minLines = 25,
				},
				closureReturnTypeHints = {
					enable = "never",
				},
				lifetimeElisionHints = {
					enable = "never",
					useParameterNames = false,
				},
				maxLength = 25,
				parameterHints = {
					enable = true,
				},
				reborrowHints = {
					enable = "never",
				},
				renderColons = true,
				typeHints = {
					enable = true,
					hideClosureInitialization = false,
					hideNamedConstructor = false,
				},
			},
		},
	},
}
