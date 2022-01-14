require('bufferline').setup {
    options = {
        numbers = function(opts)
            return string.format('%s.', opts.ordinal)
        end,

        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(_, _, diagnostics_dict, _)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
                or (e == "warning" and " " or "" )
                s = s .. sym .. n .. " "
            end
            return s:sub(1, -2)
        end,

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
