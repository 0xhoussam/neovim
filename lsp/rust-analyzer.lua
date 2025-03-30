return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml" },
	capabilities = {
		experimental = {
			serverStatusNotification = true,
		},
	},
}
