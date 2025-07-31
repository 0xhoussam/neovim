local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- neovim full screen
if vim.g.neovide == true then
	vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

-- Jumping Between Buffers
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- BufferLine
-- Move to previous/next
map("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", opts)

-- Close Buffer
map("n", "<leader>c", "<Cmd>:Bdelete<CR>", opts)

-- NvimTreeLua
map("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", opts)

-- Telescope
map("n", "<leader>f", "<Cmd>:Pick files<CR>", opts)
map("n", "<leader>g", "<Cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>ts", "<Cmd>Telescope lsp_document_symbols<CR>", opts)
map("n", "<leader>tr", "<Cmd>Telescope registers<CR>", opts)
vim.keymap.set("n", "<leader>tlr", "<Cmd>Telescope lsp_refrences<CR>", opts)

-- Gitblame
map("n", "<leader>b", "<Cmd>GitBlameToggle<CR>", opts)

vim.api.nvim_set_keymap("n", "<leader><CR>", ":luafile $MYVIMRC<CR>", opts)

vim.keymap.set("n", "K", require("hover").hover, opts)
vim.keymap.set("n", "gK", require("hover").hover_select, opts)
vim.keymap.set("n", "<MouseMove>", require("hover").hover_mouse, opts)

-- map("n", "<leader>dn", next_diagnostics, opts)
vim.keymap.set("n", "<leader>dn", function()
	vim.diagnostic.goto_next()
end, opts)
vim.keymap.set("n", "<leader>dp", function()
	vim.diagnostic.goto_prev()
end, opts)

map("n", "<C-\\>", "<Cmd>ToggleTerm<CR>", opts)

map("n", "<S-E>", "<S-$>", opts)

vim.keymap.set("n", "z=", "<Cmd>Telescope spell_suggest<CR>", opts)

vim.keymap.set("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]], { noremap = true, silent = false })
