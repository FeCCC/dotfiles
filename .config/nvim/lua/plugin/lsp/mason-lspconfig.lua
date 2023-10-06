local mason_lsp = {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "clangd",
                "jsonls",
                "pyright",
                "yamlls",
                "bashls",
                "tsserver",
                "eslint",
            },
        })
    end,
}

return mason_lsp
