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
                    'stylelint_lsp',
                    'volar', -- Vue
                    -- 'vuels',
    }

require('mason').setup()
require('mason-lspconfig').setup({ ensure_installed = servers})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', '<lueader>o', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- require('lspconfig').lua_ls.setup {
--     on_attach = on_attach
-- }

for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

