vim.cmd[[inoremap <silent> <c-f> <cmd>lua require('luasnip').jump(1)<cr>]]
vim.cmd[[inoremap <silent> <c-b> <cmd>lua require('luasnip').jump(-1)<cr>]]
vim.cmd[[snoremap <silent> <c-f> <cmd>lua require('luasnip').jump(1)<cr>]]
vim.cmd[[snoremap <silent> <c-b> <cmd>lua require('luasnip').jump(-1)<cr>]]
