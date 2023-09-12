local mason_tool_installer = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
        'williamboman/mason.nvim',
    },
    config = function()
        require('mason-tool-installer').setup({
            ensure_installed = {
                'prettierd',
                'black',
                'beautysh',
                'stylua',
            },
        })
    end,
}

return mason_tool_installer
