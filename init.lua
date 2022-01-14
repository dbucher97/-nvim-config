vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'options'
require 'plugins'

vim.cmd [[
augroup auto_update
autocmd!
autocmd BufWritePost ~/.config/nvim/lua/plugins/init.lua :so % | PackerSync
autocmd BufWritePost ~/.config/nvim/lua/plugins/*.lua :PackerCompile
augroup END
]]

