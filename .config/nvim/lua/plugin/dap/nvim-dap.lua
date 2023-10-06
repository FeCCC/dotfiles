local nvim_dap = {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        dap.set_log_level("DEBUG")
        dap.adapters.python = {
            type = "executable",
            command = "python",
            args = { "-m", "debugpy.adapter" },
        }
        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "launch file",
                program = "${file}",
                -- pythonPath = function()
                --     return "/usr/bin/python"
                -- end,
            },
        }

        local mason_registry = require('mason-registry')
        local codelldb = mason_registry.get_package("codelldb")
        dap.adapters.codelldb = {
            type = "server",
            port = "${port}",
            executable = {
                -- CHANGE THIS to your absolute path!
                command = codelldb:get_install_path() .. "/extension/adapter/codelldb",
                args = { "--port", "${port}" },

                -- On windows you may have to uncomment this:
                -- detached = false,
            },
        }
        dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                end,

                cwd = "${workspaceFolder}",
                stopAtEntry = false,
            },
        }
        dap.configurations.c = dap.configurations.cpp
        dap.configurations.rust = dap.configurations.cpp
    end,
}

return nvim_dap
