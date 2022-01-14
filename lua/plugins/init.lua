local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap = nil
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system {
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    }
end

local p = function(name)
    return string.format('require\'plugins.%s\'', name)
end

local setup = function(use)
    use 'wbthomason/packer.nvim'
    -- required by other packages but not explicitly stated
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- UI ----------------------------------------------------------------------
    -- Colorscheme
    use {
        'catppuccin/nvim',
        as = 'catppuccin',
        config = p 'catppuccin',
    }

    -- Explorer
    use { 'kyazdani42/nvim-tree.lua', config = p 'nvim-tree' }

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', config = p 'telescope' }

    -- Tabbar
    use { 'akinsho/bufferline.nvim', config = p 'bufferline' }

    -- Statusbar
    use { 'nvim-lualine/lualine.nvim', config = p 'lualine' }

    -- Control -----------------------------------------------------------------
    use 'tpope/vim-surround'
    use { 'windwp/nvim-autopairs', config = p'nvim-autopairs' }

    -- Kitty Navigator
    use {
        'knubie/vim-kitty-navigator',
        run = 'cp ./*.py ~/.config/kitty/',
        config = p 'vim-kitty-navigator',
    }

    -- Languages ---------------------------------------------------------------
    use {
        'nvim-treesitter/nvim-treesitter',
        config = p 'treesitter',
        run = ':TSUpdate',
    }

    use { 'neovim/nvim-lspconfig', config = p 'lsp-config' }
    use {
        'williamboman/nvim-lsp-installer',
        config = p 'nvim-lsp-installer',
    }

    -- LSP stuff around --------------------------------------------------------
    use {
        'L3MON4D3/LuaSnip',
        config = p 'luasnip',
        requires = { 'rafamadriz/friendly-snippets' },
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-emoji',
            'saadparwaiz1/cmp_luasnip',
            'f3fora/cmp-spell',
        },
        config = p 'nvim-cmp',
    }

    -- Which key on bottom requires other plugins to be loaded already.
    use { 'folke/which-key.nvim', config = p 'which-key' }

    -- Bootstrapping
    if packer_bootstrap then
        require('packer').sync()
    end
end

return require('packer').startup { setup }
