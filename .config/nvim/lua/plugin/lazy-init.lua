local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("plugin.plugins.onedark"),
    require("plugin.plugins.lualine"),
    require("plugin.plugins.nvim-tree"),
    require("plugin.plugins.bufferline"),
    require("plugin.plugins.bufdel"),
    require("plugin.plugins.neodev"),
    require("plugin.plugins.whichkey"),
    require("plugin.plugins.fzf"),
    require("plugin.plugins.telescope"),
    require("plugin.plugins.nvimnotify"),
    require("plugin.plugins.project"),
    require("plugin.plugins.treesitter"),
    require("plugin.plugins.rainbow"),
    require("plugin.plugins.dashboard"),
    require("plugin.plugins.comment"),
    require("plugin.plugins.toggleterm"),
    require("plugin.plugins.gitsigns"),
    require("plugin.plugins.undotree"),
    require("plugin.plugins.diffview"),
    require("plugin.plugins.indentline"),

    -- lsp
    require("plugin.lsp.nvimcmp"),
    require("plugin.lsp.nvim-lspconfig"),
    require("plugin.lsp.fidget"),
    require("plugin.lsp.mason"),
    require("plugin.lsp.mason-lspconfig"),
    require("plugin.lsp.mason-tool-installer"),
    require("plugin.lsp.lspsaga"),
    require("plugin.lsp.null-ls"),
    require("plugin.lsp.symbols-outline"),
})


--require("lazy").setup({
--    spec = {
--        { import = "plugin.plugins" }
--    },
--    defaults = { version = false },
--})
