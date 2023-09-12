local project_plugin = {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			detection_methods = { "pattern" },
			datapath = vim.fn.stdpath("data"),
			patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },
		})
	end,
}

return project_plugin
