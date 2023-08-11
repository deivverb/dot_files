local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- My plugins 

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- syntax highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- fancy ctrl-z
    use('mbbill/undotree')

    -- git 
    use('tpope/vim-fugitive')

    -- file explorer
    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')

    -- neovim statusline
    use('nvim-lualine/lualine.nvim')

    -- lsp
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')

    -- code completion
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')

    -- themes
    use('navarasu/onedark.nvim')

    -- keybind helper
    use 'folke/which-key.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
