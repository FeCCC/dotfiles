local nullis_plugin = {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "jay-babu/mason-null-ls.nvim",
    },
    config = function()
        local nl = require("null-ls")
        local sources = {
            nl.builtins.formatting.prettierd,
            nl.builtins.formatting.black,
            nl.builtins.formatting.beautysh,
            nl.builtins.formatting.stylua,
        }
        nl.setup({
            sources = sources,
            on_attach = on_attach,
        })
    end,
}

return nullis_plugin
