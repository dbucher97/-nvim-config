local wk = require 'which-key'
wk.setup {
    key_labels = {
        ['<space>'] = 'SPC',
        ['<cr>'] = 'RET',
        ['<CR>'] = 'RET',
        ['<tab>'] = 'TAB',
        ['<Tab>'] = 'TAB',
        ['<leader>'] = 'SPC',
    },
    window = {
        border = 'single', -- none, single, double, shadow
        position = 'bottom', -- bottom, top
        margin = { 1, 1, 1, 1 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 10,
    },
}

-- Extend defaults
wk.register({
    ['<space>'] = 'Leader',
    ['g'] = 'Go',
    ['z'] = 'Folds and Spell',
    ['['] = 'Previous',
    [']'] = 'Next',
    ['gnn'] = 'Treesitter scope selection',
}, {})
wk.register({
    ['<ScrollWheelUp>'] = {'<C-y>', 'which_key_ignore'},
    ['<ScrollWheelDown>'] = {'<C-e>', 'which_key_ignore'},
}, {mode = 'n'})

wk.register({
    ['<m-h>'] = { '<cmd>KittyNavigateLeft<cr>', 'Goto window left' },
    ['<m-j>'] = { '<cmd>KittyNavigateDown<cr>', 'Goto window down' },
    ['<m-k>'] = { '<cmd>KittyNavigateUp<cr>', 'Goto window up' },
    ['<m-l>'] = { '<cmd>KittyNavigateRight<cr>', 'Goto window right' },
}, { mode = 'i' })
wk.register({
    ['<m-h>'] = { '<cmd>KittyNavigateLeft<cr>', 'Goto window left' },
    ['<m-j>'] = { '<cmd>KittyNavigateDown<cr>', 'Goto window down' },
    ['<m-k>'] = { '<cmd>KittyNavigateUp<cr>', 'Goto window up' },
    ['<m-l>'] = { '<cmd>KittyNavigateRight<cr>', 'Goto window right' },
}, { mode = 'v' })
wk.register({
    ['<m-h>'] = { '<cmd>KittyNavigateLeft<cr>', 'Goto window left' },
    ['<m-j>'] = { '<cmd>KittyNavigateDown<cr>', 'Goto window down' },
    ['<m-k>'] = { '<cmd>KittyNavigateUp<cr>', 'Goto window up' },
    ['<m-l>'] = { '<cmd>KittyNavigateRight<cr>', 'Goto window right' },

    ['<tab>'] = { '<cmd>NvimTreeToggle<cr>', 'Toggle NvimTree' },
    g = {
        d = { '<cmd>lua vim.lsp.buf.definition()<CR>', 'Goto definition'},
        D = { '<cmd>lua vim.lsp.buf.declaration()<CR>', 'Goto declaration'},
        i = { '<cmd>lua vim.lsp.buf.implementation()<CR>', 'Goto implementation'},
        r = { '<cmd>lua vim.lsp.buf.references()<CR>', 'Goto references'},
    },
    K = {'<cmd>lua vim.lsp.buf.hover()<CR>', 'Hover'},
    ['<C-n>'] = {'<cmd>lua vim.diagnostic.goto_next()<CR>', 'Next diagnostic'},
    ['<C-p>'] = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', 'Previous diagnostic'},
    ['<C-k>'] = {'<cmd>lua vim.buf.signature_help()<CR>', 'Signature help'}
}, {})

wk.register({
    ['?'] = { '<cmd>WhichKey<cr>', 'Open WhichKey' },
    ['.'] = { '<cmd>Telescope find_files<cr>', 'Find File' },
    [','] = { '<cmd>Telescope buffers<cr>', 'Find Buffer' },
    ['+'] = { '<cmd>TroubleToggle<cr>', 'Toggle Trouble'},
    ['<Tab>'] = { '<cmd>b#<cr>', 'Last Buffer' },
    f = {
        name = 'Find/File',
        f = { '<cmd>Telescope find_files<cr>', 'Find File' },
        g = { '<cmd>Telescope live_grep<cr>', 'Find Word' },
        h = { '<cmd>Telescope help_tags<cr>', 'Find help tags' },
        c = { '<cmd>Telescope commands<cr>', 'Find Commands' },
        m = { '<cmd>Telescope <cr>', 'Commands' },
        b = { '<cmd>Telescope buffers<cr>', 'Find Buffer' },
    },
    b = {
        name = 'Buffers',
        p = { '<cmd>bp<cr>', 'Previous Buffer' },
        n = { '<cmd>bn<cr>', 'Next Buffer' },
        l = { '<cmd>b#<cr>', 'Last Buffer' },
        d = { '<cmd>bd<cr>', 'Close Buffer' },
        j = { '<cmd>BufferLineCyclePrev<cr>', 'Next Buffer on Line' },
        k = { '<cmd>BufferLineCycleNext<cr>', 'Previous Buffer on Line' },
        J = { '<cmd>BufferLineMovePrev<cr>', 'Move Buffer right' },
        K = { '<cmd>BufferLineMoveNext<cr>', 'Move Buffer left' },
        ['1'] = { '<cmd>BufferLineGoToBuffer 1<cr>', 'Go to Buffer 1' },
        ['2'] = { '<cmd>BufferLineGoToBuffer 2<cr>', 'Go to Buffer 2' },
        ['3'] = { '<cmd>BufferLineGoToBuffer 3<cr>', 'Go to Buffer 3' },
        ['4'] = { '<cmd>BufferLineGoToBuffer 4<cr>', 'Go to Buffer 4' },
        ['5'] = { '<cmd>BufferLineGoToBuffer 5<cr>', 'Go to Buffer 5' },
        ['6'] = { '<cmd>BufferLineGoToBuffer 6<cr>', 'Go to Buffer 6' },
        ['7'] = { '<cmd>BufferLineGoToBuffer 7<cr>', 'Go to Buffer 7' },
        ['8'] = { '<cmd>BufferLineGoToBuffer 8<cr>', 'Go to Buffer 8' },
        ['9'] = { '<cmd>BufferLineGoToBuffer 9<cr>', 'Go to Buffer 9' },
        ['0'] = { '<cmd>BufferLineGoToBuffer 10<cr>', 'Go to Buffer 10' },
        b = { '<cmd>BufferLinePick<cr>', 'Pick Buffer' },
    },
    c = {
        name = "code",
        d = { '<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type Definition" },
        r = { '<cmd>lua vim.lsp.buf.rename()<CR>', "Rename object" },
        a = { '<cmd>lua vim.lsp.buf.code_action()<CR>', "Code action" },
        f = { '<cmd>lua vim.lsp.buf.formatting()<CR>', "Code action" },
        e = { '<cmd>lua vim.lsp.diagnostic.open_float()<CR>', "Open Diagnostics" },
        q = { '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Open location list" },
        w = {
            name = "workspace",
            a = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', 'Add workspace folder'},
            r = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', 'Remove workspace folder'},
            l = { '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', 'List workspace folders'},
        },
        x = { '<cmd>TroubleToggle<cr>', 'Toggle Trouble'},
    },
}, { prefix = '<leader>' })



--------------------------------------------------------------------------------
-- Just descritpions
-- surround
wk.register({
    ['cs'] = 'Change surroundings',
    ['cq'] = { 'cs\'"', 'Single quotes to double quotes' },
    ['cQ'] = { 'cs"\'', 'Double quotes to single quotes' },
    ['ds'] = 'Delete surroundings',
    ['ys'] = 'Add surroundings',
    ['yss'] = 'Add surroundings to line',
}, {})


--------------------------------------------------------------------------------
-- File Type spceific bindings
--
_G.registerNvimTree = function()
    local buf = vim.api.nvim_get_current_buf()
    require('which-key').register({
        a = { 'Add new file', buffer = buf },
        ['-'] = { 'Dir up', buffer = buf },
        ['<2-LeftMouse>'] = { 'Open file/folder', buffer = buf },
        ['<cr>'] = { 'Open file/folder', buffer = buf },
        o = { 'Open file/folder', buffer = buf },
        ['<2-RightMouse>'] = { 'Change dir', buffer = buf },
        ['<C-]>'] = { 'Change dir', buffer = buf },
        ['<C-v>'] = { 'Vertical split', buffer = buf },
        ['<C-x>'] = { 'Horizontal split', buffer = buf },
        ['<C-t>'] = { 'New tab', buffer = buf },
        ['<C-r>'] = { 'Full rename', buffer = buf },
        ['<'] = { 'Previous Sibling', buffer = buf },
        ['>'] = { 'Next Sibling', buffer = buf },
        ['P'] = { 'Parent Node', buffer = buf },
        ['<bs>'] = { 'Close Node', buffer = buf },
        K = { 'First Sibling', buffer = buf },
        J = { 'Last Sibling', buffer = buf },
        H = { 'Toggle dotfiles', buffer = buf },
        I = { 'Toggle ignored', buffer = buf },
        d = { 'Delete file', buffer = buf },
        D = { 'Trash file', buffer = buf },
        r = { 'Rename file', buffer = buf },
        R = { 'Refress NvimTree', buffer = buf },
        x = { 'Cut file', buffer = buf },
        c = { 'Copy file', buffer = buf },
        p = { 'Paste file', buffer = buf },
        y = { 'Copy rename file', buffer = buf },
        Y = { 'Copy path of file', buffer = buf },
        ['gy'] = { 'Copy absolut path', buffer = buf },
        ['[c'] = { 'Previous Git item', buffer = buf },
        [']c'] = { 'Next Git item', buffer = buf },
        s = { 'Open in Finder', buffer = buf },
        q = { 'Close NvimTree', buffer = buf },
        ['g?'] = { 'Toggle NvimTree Help', buffer = buf },
    }, {})
end

_G.registerTrouble = function()
    local buf = vim.api.nvim_get_current_buf()
    require('which-key').register({
        ["<c-t>"] = { 'Open in new tab', buffer = buf },
        ["<c-x>"] = { 'Open in horizontal split', buffer = buf },
        ["<c-v>"] = { 'Open in vertical split', buffer = buf },
        ["<tab>"] = { 'Open/Toggle fold', buffer = buf },
        m = { 'Toggle mode', buffer = buf },
        o = { 'Jump and quit', buffer = buf },
        p = { 'Preview', buffer = buf },
        P = { 'Toggle preview', buffer = buf },
        q = { 'Quit', buffer = buf },
        r = { 'Refresh', buffer = buf },
        ["<cr>"] = { 'Jump', buffer = buf },
    }, {})
end

vim.cmd [[
augroup WhichKeyFT
autocmd!
autocmd FileType NvimTree lua registerNvimTree()
autocmd FileType Trouble lua registerTrouble()
augroup END
]]
