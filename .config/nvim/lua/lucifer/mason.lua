return{
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    config = function()
        local lsp_zero = require('lsp-zero')
        local lspconfig = require('lspconfig')
        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)
        require('mason').setup({})
        require('mason-lspconfig').setup({
            automatic_installation = true,
            handlers = {
                lsp_zero.default_setup,
            },
        })
    end,
}
