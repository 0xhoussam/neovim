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
map("n", "<leader>f", "<Cmd>Telescope find_files<CR>", opts)
map("n", "<leader>g", "<Cmd>Telescope live_grep<CR>", opts)
-- map("n", "<leader>s", "<Cmd>Telescope lsp_document_symbols<CR>", opts)
map("n", "<leader>r", "<Cmd>Telescope registers<CR>", opts)
map("n", "<leader>tw", "<Cmd>Telescope git_worktree<CR>", opts)

-- Gitblame
map("n", "<leader>b", "<Cmd>GitBlameToggle<CR>", opts)

vim.api.nvim_set_keymap("n", "<leader><CR>", ":luafile $MYVIMRC<CR>", opts)

-- Lsp Saga
map("n", "<leader>rf", "<Cmd>Lspsaga finder<CR>", opts)
map("n", "<leader>k", "<Cmd>Lspsaga hover_doc<CR>", opts)

map("n", "<leader>dn", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
map("n", "<leader>dp", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

map("n", "<C-\\>", "<Cmd>Lspsaga term_toggle<CR>", opts)
map("t", "<C-\\>", "<Cmd>Lspsaga term_toggle<CR>", opts)

map("n", "<S-E>", "<S-$>", opts)
