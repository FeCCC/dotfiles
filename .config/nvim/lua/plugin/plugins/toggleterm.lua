local toggleterm = {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        --[[ things you want to change go here]]
    },
    config = function()
        require("toggleterm").setup {
            -- 打开/关闭终端快捷键
            open_mapping = [[<c-\>]],
            -- 打开新终端后自动进入插入模式
            start_in_insert = true,
        }
    end
}
return toggleterm
