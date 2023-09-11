local nvim_lspconfig = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "tamago324/nlsp-settings.nvim"
    },
    config = function()
        -- Set up lspconfig.
        require("plugin.lsp.lsp-config.lua")
        require("plugin.lsp.lsp-config.clangd")
        require("plugin.lsp.lsp-config.json")
        require("plugin.lsp.lsp-config.pyright")
        require("plugin.lsp.lsp-config.yaml")
        require("plugin.lsp.lsp-config.bash")
    end
}

return nvim_lspconfig
