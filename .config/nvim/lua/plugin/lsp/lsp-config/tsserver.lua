local tsserver_config = {

}

return {
    require("lspconfig").tsserver.setup(tsserver_config)
}

