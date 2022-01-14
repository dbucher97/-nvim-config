require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-h>'] = 'which_key',
                ['<Esc>'] = 'close',
                ['<C-j>'] = 'move_selection_next',
                ['<C-k>'] = 'move_selection_previous',
            },
        },
    },
}
