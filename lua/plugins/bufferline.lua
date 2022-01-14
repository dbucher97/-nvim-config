require('bufferline').setup {
    options = {
        numbers = function(opts)
            return string.format('%s.', opts.ordinal)
        end,

        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,

        offsets = {
            {
                filetype = 'NvimTree',
                text = 'File Explorer',
                text_align = 'center',
            },
        },
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = 'slant',
        always_show_bufferline = true,
    },
}
