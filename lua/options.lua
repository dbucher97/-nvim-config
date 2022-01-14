local indent = 4

vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.shiftwidth = indent -- Size of an indent
vim.o.smartindent = true -- Insert indents automatically
vim.o.tabstop = indent -- Number of spaces tabs count for
vim.o.softtabstop = indent -- Number of spaces tabs count for
vim.o.spelllang = 'en'
vim.o.hidden = true -- Enable modified buffers in bg
vim.o.ignorecase = true -- Ignore case
vim.o.joinspaces = false -- No double spaces with join
vim.o.scrolloff = 4 -- Lines of context
vim.o.shiftround = true -- Round indent
vim.o.sidescrolloff = 4 -- Columns of context
vim.o.smartcase = true -- Don't ignore case with capitals
vim.o.splitbelow = true -- Put new windows below current
vim.o.splitright = true -- Put new windows right of current
vim.o.termguicolors = true -- True color support
vim.o.mouse = 'a' -- Enable Mouse support
vim.o.showmatch = true -- Show matching brackets
vim.o.foldlevelstart = 99
vim.o.fillchars = 'fold:-'
vim.o.completeopt = 'menuone,noselect'

vim.o.background = 'dark'
vim.o.textwidth = 80 -- Set text width
vim.o.list = true -- Show some invisible characters
vim.o.listchars = 'tab:> ,trail:•' -- Define chars to show instead
vim.o.number = true -- Print line number
vim.o.relativenumber = true -- Relative line numbers
vim.o.wrap = true -- Disable line wrap
vim.o.signcolumn = 'yes:1' -- Always show signcolumn on left
vim.o.colorcolumn = '+1' -- Display color column
vim.o.cursorline = true
vim.o.pumheight = 15

vim.g.tex_flavor = 'latex'
