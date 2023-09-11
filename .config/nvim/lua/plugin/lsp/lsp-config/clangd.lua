local lspconfig = require("lspconfig")
local common = require("plugin.lsp.lspcommon")
local l_capabilities = common.capabilities
l_capabilities.offsetEncoding = { "utf-16" }

local clangd_config = {
    capabilities = l_capabilities,
}

return {
    lspconfig.clangd.setup(clangd_config)
}
