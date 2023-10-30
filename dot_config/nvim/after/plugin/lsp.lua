local servers = {
    'lua_ls',
    'cssls',
    'cssmodules_ls',
    'eslint',
    'emmet_ls',
    'html',
    'jsonls',
    'tsserver', -- JavaScript
    'marksman', -- Markdown
    'volar', -- Vue
    -- 'vuels',
}

require('mason').setup()
require('mason-lspconfig').setup({ ensure_installed = servers })

