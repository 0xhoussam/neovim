local g = vim.g
local o = vim.o
local opt = vim.opt

opt.linespace = 1

-- vim.cmd("syntax on")
vim.opt.cmdheight = 0
vim.api.nvim_command("filetype plugin indent on")
vim.g.disable_autoformat = true

o.termguicolors = true
o.background = "dark"
vim.cmd.colorscheme("fleet")
-- vim.o.guifont = "ZedMono Nerd Font:h15"

o.ph = 10
o.pw = 2

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.signcolumn = "yes"
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = false
-- o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
-- BUG This option causes an error!
-- o.jumpoptions = 'view'

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1
--
opt.mouse = "a"

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "

vim.lsp.inlay_hint.enable()

vim.diagnostic.config({
	virtual_text = {
		severity = {
			max = vim.diagnostic.severity.WARN,
		},
	},
	virtual_lines = {
		severity = {
			min = vim.diagnostic.severity.ERROR,
		},
	},
})
