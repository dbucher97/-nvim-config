require('lualine').setup {
    options = {
        theme = 'catppuccin',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {
            {
                'filename',
                path = 1,
                symbols = { modified = ' ', readonly = ' ' },
            },
        },
        lualine_c = { 'diagnostics' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'branch', 'diff' },
        lualine_z = { 'progress', 'location' },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {
            {
                'filename',
                path = 1,
                symbols = { modified = ' ', readonly = ' ' },
            },
        },
        lualine_c = {},
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
    },
    extensions = { 'nvim-tree', 'quickfix' },
}
