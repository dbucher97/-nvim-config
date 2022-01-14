local cmp = require'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            require'luasnip'.lsp_expand(args.body)
        end
    },
    sources = {
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 5 },
    },
    mapping = {
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 'c'}),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i', 'c'}),
        ['<C-l>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }, {'i', 'c'}),
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }, {'i', 'c'}),
    },
    experimental = {
        ghost_text = true,
        native_menu = false,
    },
}


cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer', keyword_length = 3 }
    }
})

cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path', keyword_length = 2 }
    }, {
        { name = 'cmdline', keyword_length = 2 }
    })
})

-- Autopairs stuff
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"
