require('catppuccin').setup {
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = 'italic',
        functions = 'italic',
        keywords = 'italic',
        strings = 'NONE',
        variables = 'NONE',
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = 'italic',
                hints = 'italic',
                warnings = 'italic',
                information = 'italic',
            },
            underlines = {
                errors = 'underline',
                hints = 'underline',
                warnings = 'underline',
                information = 'underline',
            },
        },
        lsp_trouble = false,
        cmp = true,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = false,
        },
        which_key = false,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dashboard = true,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = true,
        lightspeed = false,
        ts_rainbow = false,
        hop = false,
        notify = true,
        telekasten = true,
    },
}

local colors = require('catppuccin.api.colors').get_colors()
require('catppuccin').remap { ColorColumn = { bg = colors.black1 } }

vim.cmd [[colorscheme catppuccin]]
