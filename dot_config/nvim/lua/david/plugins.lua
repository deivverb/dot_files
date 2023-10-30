return {
    -- Syntax Highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    'nvim-treesitter/playground',

    -- Fuzzy Finder
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        version = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- Theme
    'navarasu/onedark.nvim',

    -- File Explorer
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('nvim-tree').setup {}
        end
    },

    -- Neovim Statusline
    'nvim-lualine/lualine.nvim',

    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',

    -- Keybind Helper
    {
        'folke/which-key.nvim',
        event = 'VeryLazy'
    },

    -- Fancy ctrl-z
    {
        'mbbill/undotree',
        lazy = false,
    },

    -- Tabs & Terminal Toggle
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        config = true
    },
}
